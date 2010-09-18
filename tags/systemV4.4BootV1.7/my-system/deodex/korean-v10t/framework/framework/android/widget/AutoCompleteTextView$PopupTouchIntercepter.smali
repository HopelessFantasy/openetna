.class Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchIntercepter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1421
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 1422
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$900(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1423
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1425
    :cond_15
    const/4 v0, 0x0

    return v0
.end method
