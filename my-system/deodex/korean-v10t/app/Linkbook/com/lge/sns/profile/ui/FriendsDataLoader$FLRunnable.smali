.class public abstract Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.super Ljava/lang/Object;
.source "FriendsDataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FLRunnable"
.end annotation


# instance fields
.field private mCallBackParamObject:Ljava/lang/Object;

.field private mFLCB:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mFLCB:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V
    .registers 2
    .parameter "flcb"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mFLCB:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    .line 226
    return-void
.end method


# virtual methods
.method public callbackMainMethod()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mFLCB:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mFLCB:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mCallBackParamObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;->onFinishRunnable(Ljava/lang/Object;)V

    .line 237
    :cond_b
    return-void
.end method

.method public setCallBackParam(Ljava/lang/Object;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->mCallBackParamObject:Ljava/lang/Object;

    .line 231
    return-void
.end method
