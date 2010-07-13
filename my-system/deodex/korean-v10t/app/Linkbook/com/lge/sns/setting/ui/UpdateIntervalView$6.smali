.class Lcom/lge/sns/setting/ui/UpdateIntervalView$6;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pad(I)Ljava/lang/String;
    .registers 4
    .parameter "hour"

    .prologue
    .line 309
    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private updateDisplay()V
    .registers 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    invoke-direct {p0, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    invoke-direct {p0, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v2, v2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/16 v0, 0xc

    .line 291
    if-lt p2, v0, :cond_20

    .line 292
    sub-int v0, p2, v0

    sput v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    .line 293
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    .line 294
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const v2, 0x7f050063

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    .line 300
    :goto_1a
    sput p3, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    .line 301
    invoke-direct {p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->updateDisplay()V

    .line 302
    return-void

    .line 296
    :cond_20
    sput p2, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    .line 297
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    .line 298
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const v2, 0x7f050062

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    goto :goto_1a
.end method
