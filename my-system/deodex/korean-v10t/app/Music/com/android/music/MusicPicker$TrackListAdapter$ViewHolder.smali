.class Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field duration:Landroid/widget/TextView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field play_indicator:Landroid/widget/ImageView;

.field radio:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/music/MusicPicker$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/MusicPicker$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->this$1:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
