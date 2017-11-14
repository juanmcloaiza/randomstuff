
#python 3.5.2

class branch:
    
    def __init__(self,weight=0,branches=[]):
        self.Branches = branches
        self.Weight = weight
    
    def TotalWeight(self):
        tot_weight = 0
        
        for b in self.Branches:
            tot_weight += b.TotalWeight()
            
        tot_weight += self.Weight
        return tot_weight

### Test the class ###
    
val = [5,4,7,1,6,3,9,8,3,2]

tree = branch(val[0], 
              [branch(val[1], 
                      [branch(val[2]),
                       branch(val[3])
                       ]
                      ), 
               branch(val[4], 
                      [branch(val[5],
                              [branch(val[6]), 
                               branch(val[7]), 
                               branch(val[8])
                               ]
                              ),
                        branch(val[9])
                        ]
                      )
               ]
              )

print(tree.TotalWeight())
assert sum(val) == tree.TotalWeight()
