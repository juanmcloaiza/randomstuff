#!/usr/bin/env python
import asyncio
import time

# Time consuming task as a coroutine
async def fetch_data(delay, my_id):
    print(f"Fetching data... {my_id}")

    await asyncio.sleep(delay) # simulate an I/O operation 
    #time.sleep(delay) <--- this is not async, so this actually breaks the parallelism!

    print(f"Data fetched, id: {my_id}")
    return {"data": "Some data", "id": my_id}


# coroutine function
# Defining returns a Coroutine object
async def main(): 
    print("Start of main coroutine")

    # This context block leaves until all tasks are completed.
    # No need to await; tasks are started as soon as they are added to the tg
    tasks = []
    async with asyncio.TaskGroup() as tg:
        tasks += [tg.create_task(fetch_data(3,i)) for i in range(10)]

    # All tasks completed
    results = [t.result() for t in tasks]

    for r in results:
        print(f"Received result: {r}")

    print("End of main coroutine")



if __name__ == "__main__":
    # run the main coroutine
    asyncio.run(main())
    # print(main()) <--- coroutine object
