.class final Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final mCommand:I

.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "service"
    .parameter "command"

    .prologue
    .line 1062
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    .line 1064
    iput-object p3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 1065
    iput p4, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mCommand:I

    .line 1066
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1069
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_e

    .line 1070
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1074
    :cond_d
    :goto_d
    return-void

    .line 1071
    :cond_e
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1072
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->this$0:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_d
.end method
