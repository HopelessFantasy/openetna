.class final Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "HomeSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homeselector/HomeSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/lge/homeselector/HomeSelectorActivity;


# direct methods
.method constructor <init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter "pri"
    .parameter "pLabel"
    .parameter "pInfo"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 134
    iput-object p3, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 135
    iput-object p4, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 136
    return-void
.end method
