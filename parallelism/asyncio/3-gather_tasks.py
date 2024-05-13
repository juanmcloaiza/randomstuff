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
    # Await the fetch data coroutine, pausing execution of main until fetch_data completes
    results = await asyncio.gather(*(fetch_data(3,i) for i in range(10)))

    for result in results:
        print(f"Received result: {result}")

    print("End of main coroutine")



if __name__ == "__main__":
    # run the main coroutine
    asyncio.run(main())
    # print(main()) <--- coroutine object
