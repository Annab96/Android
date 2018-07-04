package org.androidtown.holgabun;

import android.widget.BaseAdapter;

public class GridAdapter extends BaseAdapter{
    ArrayList<Garden> garden = new ArrayList<>();

    public GridAdapter(Context context, ArrayList<Garden> garden){
        this.context = context;
        this.garden = garden;
    }

    @override
    public int getCount(){return garden.size();}


}
