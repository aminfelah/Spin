  mtype={original_side,destination_side}
    mtype ferryman=original_side,
            cabbage=original_side,
                goat=original_side,
                    wolf=original_side;
    inline swap_side(loc)
    {
        if
        :: loc==original_side -> loc =destination_side
        :: else -> loc =original_side
        fi
    }
    inline carry(object)
    {
        atomic{
        swap_side(ferryman);
        swap_side(object);
        }
    }
    inline carry_nothing()
    {
        atomic
        {
            swap_side(ferryman);
        }
    }
    proctype cross_river()
    {
        do
        :: carry_nothing()
        :: ferryman==goat -> carry(goat)
        :: ferryman==wolf -> carry(wolf)
        :: ferryman==cabbage-> carry(cabbage)
        od
    }
    init
    {
        run cross_river();
    }
    
    #define GOAL ((ferryman==destination_side) && (wolf==destination_side) && (goat==destination_side) &&                       (cabbage==destination_side))
    #define COND ((wolf==goat && ferryman != wolf)||(goat==cabbage && ferryman==goat))
    ltl nice {((!COND) U GOAL)} 
