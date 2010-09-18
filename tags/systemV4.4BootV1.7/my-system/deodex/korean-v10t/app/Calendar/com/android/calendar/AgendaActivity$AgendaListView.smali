.class Lcom/android/calendar/AgendaActivity$AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgendaListView"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/AgendaAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->this$0:Lcom/android/calendar/AgendaActivity;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    new-instance v0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$AgendaListView$1;-><init>(Lcom/android/calendar/AgendaActivity$AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 129
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setChoiceMode(I)V

    .line 131
    new-instance v0, Lcom/android/calendar/AgendaAdapter;

    const v1, 0x7f030002

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mAdapter:Lcom/android/calendar/AgendaAdapter;

    .line 132
    new-instance v0, Lcom/android/calendar/AgendaByDayAdapter;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaByDayAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/AgendaAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    .line 133
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaActivity$AgendaListView;)Lcom/android/calendar/AgendaByDayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaActivity$AgendaListView;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDayAdapter()Lcom/android/calendar/AgendaByDayAdapter;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 155
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_c
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_9
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mCursor:Landroid/database/Cursor;

    .line 140
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->calculateDays(Landroid/database/Cursor;)V

    .line 141
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 142
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$AgendaListView;->mDayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    return-void
.end method
