.class Lcom/android/calendar/EditEvent$2;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 654
    iput-object p1, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 655
    if-eqz p2, :cond_83

    .line 656
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_70

    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_70

    .line 657
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 658
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 661
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 662
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 663
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 665
    :cond_5a
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 666
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 669
    .end local v0           #endMillis:J
    :cond_70
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    :goto_82
    return-void

    .line 672
    :cond_83
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_c3

    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_c3

    .line 673
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 674
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 675
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 676
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 679
    .end local v0           #endMillis:J
    :cond_c3
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 680
    iget-object v2, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_82
.end method
