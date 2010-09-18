.class Lcom/lge/hiddenmenu/device_test/FontTest$5;
.super Ljava/lang/Object;
.source "FontTest.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/FontTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/FontTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$5;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$5;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$712(Lcom/lge/hiddenmenu/device_test/FontTest;I)I

    .line 286
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$5;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$800(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    .line 287
    return v1
.end method
