.class Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

.field final synthetic val$this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Lcom/android/camera/ImageGallery2$GridViewSpecial;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iput-object p2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->val$this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1071
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    monitor-enter v3

    .line 1072
    :try_start_5
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)I

    move-result v2

    .line 1073
    .local v2, workCounter:I
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4f

    .line 1074
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2700(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1077
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Lcom/android/camera/ImageLoader;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1078
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Lcom/android/camera/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ImageLoader;->stop()V

    .line 1080
    :cond_25
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2900(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 1081
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2900(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_52

    .line 1082
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2900(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-result-object v3

    aget-object v0, v3, v1

    .line 1083
    .local v0, block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    if-eqz v0, :cond_4c

    .line 1084
    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$3000(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)V

    .line 1085
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2900(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-result-object v3

    aput-object v6, v3, v1

    .line 1081
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1073
    .end local v0           #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v1           #i:I
    .end local v2           #workCounter:I
    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v4

    .line 1089
    .restart local v2       #workCounter:I
    :cond_52
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3, v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2902(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    .line 1090
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3, v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$3102(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I

    .line 1091
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3, v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$3202(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I

    .line 1107
    return-void

    .line 1096
    :cond_62
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$3300(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V

    .line 1098
    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    monitor-enter v3

    .line 1099
    :try_start_6a
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)I

    move-result v4

    if-ne v2, v4, :cond_7f

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2700(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Z
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_81

    move-result v4

    if-nez v4, :cond_7f

    .line 1101
    :try_start_7a
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_81
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_7f} :catch_84

    .line 1105
    :cond_7f
    :goto_7f
    :try_start_7f
    monitor-exit v3

    goto :goto_2

    :catchall_81
    move-exception v4

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    throw v4

    .line 1102
    :catch_84
    move-exception v4

    goto :goto_7f
.end method
