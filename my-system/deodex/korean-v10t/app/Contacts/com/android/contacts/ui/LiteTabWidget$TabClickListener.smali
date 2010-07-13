.class Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "LiteTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/LiteTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/android/contacts/ui/LiteTabWidget;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/LiteTabWidget;I)V
    .registers 3
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;->this$0:Lcom/android/contacts/ui/LiteTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p2, p0, Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;->mTabIndex:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/LiteTabWidget;ILcom/android/contacts/ui/LiteTabWidget$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;-><init>(Lcom/android/contacts/ui/LiteTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;->this$0:Lcom/android/contacts/ui/LiteTabWidget;

    invoke-static {v0}, Lcom/android/contacts/ui/LiteTabWidget;->access$100(Lcom/android/contacts/ui/LiteTabWidget;)Lcom/android/contacts/ui/LiteTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/ui/LiteTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/ui/LiteTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 185
    return-void
.end method
