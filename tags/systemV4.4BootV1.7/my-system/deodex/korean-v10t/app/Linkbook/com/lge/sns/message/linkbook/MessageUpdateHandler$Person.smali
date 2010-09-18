.class Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;
.super Ljava/lang/Object;
.source "MessageUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/linkbook/MessageUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Person"
.end annotation


# instance fields
.field public dispName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

.field public userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/linkbook/MessageUpdateHandler;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->this$0:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->userName:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    return-void
.end method
