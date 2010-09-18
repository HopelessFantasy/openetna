.class final Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;
.super Lcom/android/contacts/LogEntryAdapter;
.source "ViewContactLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/LogEntryAdapter",
        "<",
        "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactLogsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactLogsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    .line 939
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/LogEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 940
    return-void
.end method

.method private bindCallsView(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V
    .registers 16
    .parameter "view"
    .parameter "entry"
    .parameter "resources"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 1027
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    .line 1030
    .local v8, views:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_23

    .line 1031
    iget v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    iget v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->typeResource(IIZ)I

    move-result v7

    .line 1032
    .local v7, res:I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_d6

    .line 1033
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    .end local v7           #res:I
    :cond_23
    :goto_23
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 1042
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_e2

    .line 1043
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1051
    :cond_37
    :goto_37
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    if-eqz v2, :cond_45

    .line 1052
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    :cond_45
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    if-eqz v2, :cond_92

    .line 1057
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    if-eqz v2, :cond_157

    .line 1058
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1059
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1060
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1062
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 1063
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1064
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    const v4, 0x7f06006f

    invoke-virtual {v3, v4}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    :goto_8d
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    :cond_92
    :goto_92
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    if-eqz v2, :cond_af

    .line 1096
    iget-wide v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->callDuration:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_172

    .line 1097
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    iget-wide v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->callDuration:J

    long-to-int v3, v3

    invoke-static {v3}, Lcom/android/contacts/ViewContactLogsActivity;->formatDuration(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    :cond_af
    :goto_af
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    if-eqz v2, :cond_c7

    .line 1106
    iget-wide v0, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 1107
    .local v0, date:J
    const/high16 v6, 0x4

    .line 1108
    .local v6, flags:I
    iget-object v9, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    .end local v0           #date:J
    .end local v6           #flags:I
    :cond_c7
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_d5

    .line 1113
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    :cond_d5
    return-void

    .line 1036
    .restart local v7       #res:I
    :cond_d6
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_23

    .line 1046
    .end local v7           #res:I
    :cond_e2
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_37

    .line 1069
    :cond_ee
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1070
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8d

    .line 1075
    :cond_112
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1076
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8d

    .line 1079
    :cond_12c
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v3}, Lcom/android/contacts/ViewContactLogsActivity;->access$1100(Lcom/android/contacts/ViewContactLogsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 1080
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8d

    .line 1083
    :cond_14a
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8d

    .line 1087
    :cond_157
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1088
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_92

    .line 1100
    :cond_172
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_af
.end method

.method private bindSmsMmsViews(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V
    .registers 16
    .parameter "view"
    .parameter "entry"
    .parameter "resources"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    .line 1123
    .local v8, views:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_24

    .line 1124
    iget v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    iget v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    iget-boolean v4, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->typeResource(IIZ)I

    move-result v7

    .line 1125
    .local v7, res:I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_a6

    .line 1126
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1127
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    .end local v7           #res:I
    :cond_24
    :goto_24
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    if-eqz v2, :cond_3c

    .line 1135
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    if-eqz v2, :cond_b2

    .line 1136
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    :cond_3c
    :goto_3c
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    .line 1145
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    :cond_4a
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    if-eqz v2, :cond_5e

    .line 1150
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_bd

    .line 1151
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    :cond_5e
    :goto_5e
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_71

    .line 1160
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1161
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1165
    :cond_71
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    if-eqz v2, :cond_7f

    .line 1166
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    :cond_7f
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    if-eqz v2, :cond_97

    .line 1171
    iget-wide v0, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 1172
    .local v0, date:J
    const/high16 v6, 0x4

    .line 1173
    .local v6, flags:I
    iget-object v9, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    .end local v0           #date:J
    .end local v6           #flags:I
    :cond_97
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a5

    .line 1178
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1181
    :cond_a5
    return-void

    .line 1129
    .restart local v7       #res:I
    :cond_a6
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_24

    .line 1139
    .end local v7           #res:I
    :cond_b2
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    .line 1154
    :cond_bd
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e
.end method

.method private bindSnsMessageViews(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V
    .registers 16
    .parameter "view"
    .parameter "entry"
    .parameter "resources"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 1185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    .line 1188
    .local v8, views:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_24

    .line 1189
    iget v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    iget v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    iget-boolean v4, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->typeResource(IIZ)I

    move-result v7

    .line 1190
    .local v7, res:I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_a6

    .line 1191
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1192
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1199
    .end local v7           #res:I
    :cond_24
    :goto_24
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    if-eqz v2, :cond_3c

    .line 1200
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    if-eqz v2, :cond_b2

    .line 1201
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1209
    :cond_3c
    :goto_3c
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    .line 1210
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    :cond_4a
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    if-eqz v2, :cond_5e

    .line 1215
    iget-object v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_bd

    .line 1216
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :cond_5e
    :goto_5e
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_71

    .line 1225
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1226
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    :cond_71
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    if-eqz v2, :cond_7f

    .line 1231
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1235
    :cond_7f
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    if-eqz v2, :cond_97

    .line 1236
    iget-wide v0, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 1237
    .local v0, date:J
    const/high16 v6, 0x4

    .line 1238
    .local v6, flags:I
    iget-object v9, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    .end local v0           #date:J
    .end local v6           #flags:I
    :cond_97
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a5

    .line 1243
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1244
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    :cond_a5
    return-void

    .line 1194
    .restart local v7       #res:I
    :cond_a6
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_24

    .line 1204
    .end local v7           #res:I
    :cond_b2
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    .line 1219
    :cond_bd
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;Lcom/android/contacts/LogEntryAdapter$Entry;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    check-cast p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;)V
    .registers 7
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 986
    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 987
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    .line 989
    .local v1, views:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    iget-object v2, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1c

    .line 990
    iget-object v2, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object v2, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    :cond_1c
    iget v2, p2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    packed-switch v2, :pswitch_data_2e

    .line 1011
    :goto_21
    :pswitch_21
    return-void

    .line 996
    :pswitch_22
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->bindCallsView(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V

    goto :goto_21

    .line 1001
    :pswitch_26
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->bindSmsMmsViews(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V

    goto :goto_21

    .line 1007
    :pswitch_2a
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->bindSnsMessageViews(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;Landroid/content/res/Resources;)V

    goto :goto_21

    .line 994
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_26
        :pswitch_26
        :pswitch_21
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1022
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->getItem(I)Lcom/android/contacts/LogEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    .line 949
    .local v1, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    if-eqz p2, :cond_16

    .line 950
    move-object v2, p2

    .line 951
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    .line 973
    .local v0, cache:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    :cond_f
    :goto_f
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;)V

    .line 975
    return-object v2

    .line 954
    .end local v0           #cache:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    .end local v2           #view:Landroid/view/View;
    :cond_16
    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030035

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 957
    .restart local v2       #view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;-><init>()V

    .line 960
    .restart local v0       #cache:Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    .line 961
    const v3, 0x7f050055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->attachIconView:Landroid/widget/ImageView;

    .line 962
    const v3, 0x7f050054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->typeIconView:Landroid/widget/ImageView;

    .line 963
    const v3, 0x7f050056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->lineView:Landroid/widget/TextView;

    .line 964
    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->labelView:Landroid/widget/TextView;

    .line 965
    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->numberView:Landroid/widget/TextView;

    .line 966
    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->durationView:Landroid/widget/TextView;

    .line 967
    const v3, 0x7f050044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->dateView:Landroid/widget/TextView;

    .line 969
    iget-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    .line 970
    iget-object v3, v0, Lcom/android/contacts/ViewContactLogsActivity$ViewCache;->callIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 981
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 936
    :cond_7
    :goto_7
    return-void

    .line 928
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 929
    .local v0, tagData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 930
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 931
    .local v1, telUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/ViewContactLogsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 926
    :pswitch_data_28
    .packed-switch 0x7f05000f
        :pswitch_8
    .end packed-switch
.end method

.method public typeResource(IIZ)I
    .registers 7
    .parameter "kind"
    .parameter "type"
    .parameter "read"

    .prologue
    const v2, 0x7f02009e

    const v1, 0x7f02009d

    .line 1250
    if-nez p1, :cond_19

    .line 1251
    packed-switch p2, :pswitch_data_68

    .line 1308
    :cond_b
    :goto_b
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 1253
    :pswitch_d
    const v0, 0x7f02008f

    goto :goto_c

    .line 1255
    :pswitch_11
    const v0, 0x7f020099

    goto :goto_c

    .line 1257
    :pswitch_15
    const v0, 0x7f02008e

    goto :goto_c

    .line 1259
    :cond_19
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 1260
    packed-switch p2, :pswitch_data_72

    :pswitch_1f
    goto :goto_b

    .line 1262
    :pswitch_20
    if-eqz p3, :cond_26

    .line 1263
    const v0, 0x7f020094

    goto :goto_c

    .line 1265
    :cond_26
    const v0, 0x7f020095

    goto :goto_c

    .line 1269
    :pswitch_2a
    const v0, 0x7f020093

    goto :goto_c

    .line 1271
    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_43

    .line 1272
    packed-switch p2, :pswitch_data_7e

    :pswitch_34
    goto :goto_b

    .line 1274
    :pswitch_35
    if-eqz p3, :cond_3b

    .line 1275
    const v0, 0x7f020096

    goto :goto_c

    .line 1277
    :cond_3b
    const v0, 0x7f020097

    goto :goto_c

    .line 1281
    :pswitch_3f
    const v0, 0x7f020098

    goto :goto_c

    .line 1283
    :cond_43
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5e

    .line 1284
    packed-switch p2, :pswitch_data_8a

    goto :goto_b

    .line 1294
    :pswitch_4a
    if-eqz p3, :cond_5c

    move v0, v1

    .line 1295
    goto :goto_c

    .line 1286
    :pswitch_4e
    if-eqz p3, :cond_54

    .line 1287
    const v0, 0x7f02009a

    goto :goto_c

    .line 1289
    :cond_54
    const v0, 0x7f02009b

    goto :goto_c

    .line 1292
    :pswitch_58
    const v0, 0x7f02009c

    goto :goto_c

    :cond_5c
    move v0, v2

    .line 1297
    goto :goto_c

    .line 1300
    :cond_5e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 1301
    if-eqz p3, :cond_65

    move v0, v1

    .line 1302
    goto :goto_c

    :cond_65
    move v0, v2

    .line 1304
    goto :goto_c

    .line 1251
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch

    .line 1260
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2a
        :pswitch_1f
        :pswitch_2a
    .end packed-switch

    .line 1272
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3f
        :pswitch_34
        :pswitch_3f
    .end packed-switch

    .line 1284
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4e
        :pswitch_58
    .end packed-switch
.end method
