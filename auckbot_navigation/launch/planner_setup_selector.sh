#!/bin/bash
# planner setup selector

PS3='Please enter your choice: '
options=("global: NavFN" "global: Carrot Planner" "global: Global Planner Grid" "global: Opti Planner" "local: EDWA Planner" "local: EODWA Planner" "local: DWA Planner")
select opt in "${options[@]}"
do
    case $opt in
        "global: NavFN")
            export MB_BASE_GLOBAL_PLANNER='navfn/NavfnROS'
            export MB_USE_GRID_PATH='N/A'
            echo "planner: $MB_BASE_GLOBAL_PLANNER, grid: $MB_USE_GRID_PATH"
            break
            ;;
        "global: Carrot Planner")
            export MB_BASE_GLOBAL_PLANNER='carrot_planner/CarrotPlanner'
            export MB_USE_GRID_PATH='N/A'
            echo "planner: $MB_BASE_GLOBAL_PLANNER, grid: $MB_USE_GRID_PATH"
            break
            ;;
        "global: Global Planner Grid")
			export MB_BASE_GLOBAL_PLANNER='global_planner/GlobalPlanner'
			export MB_USE_GRID_PATH='true'
            echo "planner: $MB_BASE_GLOBAL_PLANNER, grid: $MB_USE_GRID_PATH"
            break
            ;;
        "global: Opti Planner")
            export MB_BASE_GLOBAL_PLANNER='opti_planner/OptiPlanner'
            export MB_USE_GRID_PATH='N/A'
            echo "planner: $MB_BASE_GLOBAL_PLANNER, grid: $MB_USE_GRID_PATH"
            break
            ;;
        "local: EDWA Planner")
            export MB_BASE_LOCAL_PLANNER_EDWA='true'
            export MB_BASE_LOCAL_PLANNER_EODWA='false'
            export MB_BASE_LOCAL_PLANNER_DWA='false'
            echo "local planner EDWA: $MB_BASE_LOCAL_PLANNER_EDWA"
            echo "local planner EODWA: $MB_BASE_LOCAL_PLANNER_EODWA"
            echo "local planner DWA: $MB_BASE_LOCAL_PLANNER_DWA"
            break
            ;;
        "local: EODWA Planner")
            export MB_BASE_LOCAL_PLANNER_EDWA='false'
            export MB_BASE_LOCAL_PLANNER_EODWA='true'
            export MB_BASE_LOCAL_PLANNER_DWA='false'
            echo "local planner EDWA: $MB_BASE_LOCAL_PLANNER_EDWA"
            echo "local planner EODWA: $MB_BASE_LOCAL_PLANNER_EODWA"
            echo "local planner DWA: $MB_BASE_LOCAL_PLANNER_DWA"
            break
            ;;
        "local: DWA Planner")
            export MB_BASE_LOCAL_PLANNER_EDWA='false'
            export MB_BASE_LOCAL_PLANNER_EODWA='false'
            export MB_BASE_LOCAL_PLANNER_DWA='true'
            echo "local planner EDWA: $MB_BASE_LOCAL_PLANNER_EDWA"
            echo "local planner EODWA: $MB_BASE_LOCAL_PLANNER_EODWA"
            echo "local planner DWA: $MB_BASE_LOCAL_PLANNER_DWA"
            break
            ;;
        *) echo "invalid option"
    esac
done
