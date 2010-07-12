.class Lcom/google/android/net/ParentalControl$RemoteCallback;
.super Landroid/os/IParentalControlCallback$Stub;
.source "ParentalControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/net/ParentalControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/net/ParentalControl$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/net/ParentalControl$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/IParentalControlCallback$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/net/ParentalControl$RemoteCallback;->mCallback:Lcom/google/android/net/ParentalControl$Callback;

    .line 51
    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/net/ParentalControlState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/net/ParentalControl$RemoteCallback;->mCallback:Lcom/google/android/net/ParentalControl$Callback;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/google/android/net/ParentalControl$RemoteCallback;->mCallback:Lcom/google/android/net/ParentalControl$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/net/ParentalControl$Callback;->onResult(Lcom/google/android/net/ParentalControlState;)V

    .line 57
    :cond_9
    return-void
.end method
