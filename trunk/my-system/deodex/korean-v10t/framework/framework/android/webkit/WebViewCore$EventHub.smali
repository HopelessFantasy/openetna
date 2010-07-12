.class Landroid/webkit/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final BLOCK_FOCUS_CHANGE_UNTIL_KEY_UP:I = 0x1

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLICK:I = 0x76

.field static final DELETE_SELECTION:I = 0x7a

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_NAVTREE:I = 0xac

.field static final DUMP_RENDERTREE:I = 0xab

.field static final GET_SELECTION:I = 0x81

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final KEY_DOWN:I = 0x67

.field static final KEY_UP:I = 0x68

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field static final NO_FOCUS_CHANGE_BLOCK:I = 0x0

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final POST_URL:I = 0x8e

.field static final REFRESH_PLUGINS:I = 0x84

.field static final RELOAD:I = 0x66

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final REQUEST_FOCUS_HREF:I = 0x89

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_FINAL_FOCUS:I = 0x87

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_KIT_FOCUS:I = 0x88

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SET_SNAP_ANCHOR:I = 0x79

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final SPLIT_PICTURE_SET:I = 0x85

.field static final STOP_LOADING:I = 0x65

.field static final SYNC_SCROLL:I = 0x83

.field static final TOUCH_EVENT:I = 0x8d

.field static final TOUCH_UP:I = 0x8c

.field static final UNBLOCK_FOCUS:I = 0x7f

.field static final UPDATE_CACHE_AND_TEXT_ENTRY:I = 0x75

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82


# instance fields
.field private mBlockMessages:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;)V
    .registers 3
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 645
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/WebViewCore$EventHub;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    iput p1, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 560
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore$EventHub;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method private declared-synchronized blockMessages()V
    .registers 2

    .prologue
    .line 1108
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1109
    monitor-exit p0

    return-void

    .line 1108
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .registers 3

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4902(Landroid/webkit/WebViewCore;Z)Z

    .line 1096
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4702(Landroid/webkit/WebViewCore;Z)Z

    .line 1097
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 1098
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 1102
    :goto_16
    monitor-exit p0

    return-void

    .line 1100
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_16

    .line 1095
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    .line 1067
    :goto_5
    monitor-exit p0

    return-void

    .line 1059
    :cond_7
    const/16 v0, 0x82

    if-ne p1, v0, :cond_11

    .line 1060
    :try_start_b
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4902(Landroid/webkit/WebViewCore;Z)Z

    .line 1062
    :cond_11
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 1063
    const-string v0, "webcore"

    const-string v1, "Not supported in this case."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1d

    goto :goto_5

    .line 1056
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1065
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    goto :goto_5
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 1053
    :goto_5
    monitor-exit p0

    return-void

    .line 1048
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1049
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 1045
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1051
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    goto :goto_5
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    .line 1088
    :goto_5
    monitor-exit p0

    return-void

    .line 1083
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 1084
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 1080
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1086
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    goto :goto_5
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 1070
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 1074
    :goto_5
    monitor-exit p0

    return-void

    .line 1073
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 1070
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .registers 5

    .prologue
    .line 651
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    .line 652
    iget v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    .line 654
    new-instance v2, Landroid/webkit/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewCore$EventHub$1;-><init>(Landroid/webkit/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 1032
    monitor-enter p0

    .line 1033
    :try_start_16
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1034
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v1, :cond_2f

    .line 1035
    iget-object v3, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1037
    :cond_2f
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1038
    monitor-exit p0

    .line 1039
    return-void

    .line 1038
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_34

    throw v2
.end method
