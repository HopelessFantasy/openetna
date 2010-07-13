.class Lcom/android/calendar/EventInfoActivity$1;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/EventInfoActivity;->access$000(Lcom/android/calendar/EventInfoActivity;)V

    .line 300
    return-void
.end method
