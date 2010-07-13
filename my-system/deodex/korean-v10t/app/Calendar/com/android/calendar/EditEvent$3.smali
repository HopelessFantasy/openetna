.class Lcom/android/calendar/EditEvent$3;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2300(Lcom/android/calendar/EditEvent;)V

    .line 761
    return-void
.end method
