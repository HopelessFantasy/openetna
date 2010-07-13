.class Lcom/android/mms/ui/EditSlideTextActivity$2;
.super Ljava/lang/Object;
.source "EditSlideTextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideTextActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideTextActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideTextActivity$2;->this$0:Lcom/android/mms/ui/EditSlideTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity$2;->this$0:Lcom/android/mms/ui/EditSlideTextActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditSlideTextActivity;->editDone()V

    .line 124
    return-void
.end method
