.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialTimePicker.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_CLOCK:I = 0x0

.field static final INPUT_MODE_EXTRA:Ljava/lang/String; = "TIME_PICKER_INPUT_MODE"

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field static final NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

.field static final NEGATIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

.field static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "TIME_PICKER_OVERRIDE_THEME_RES_ID"

.field static final POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_POSITIVE_BUTTON_TEXT"

.field static final POSITIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

.field static final TIME_MODEL_EXTRA:Ljava/lang/String; = "TIME_PICKER_TIME_MODEL"

.field static final TITLE_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_RES"

.field static final TITLE_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_TEXT"


# instance fields
.field private activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

.field private cancelButton:Landroid/widget/Button;

.field private final cancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private clockIcon:I

.field private final dismissListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputMode:I

.field private keyboardIcon:I

.field private modeButton:Lcom/google/android/material/button/MaterialButton;

.field private final negativeButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I

.field private overrideThemeResId:I

.field private final positiveButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I

.field private textInputStub:Landroid/view/ViewStub;

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

.field private timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field private timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

.field private titleResId:I

.field private titleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 93
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 95
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 119
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 123
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 74
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/timepicker/MaterialTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 74
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 74
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;
    .param p1, "x1"    # Lcom/google/android/material/button/MaterialButton;

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 74
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 74
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    return-object v0
.end method

.method private dataForMode(I)Landroid/util/Pair;
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    packed-switch p1, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no icon for mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :pswitch_0
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 443
    :pswitch_1
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getThemeResId()I
    .locals 2

    .line 554
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    if-eqz v0, :cond_0

    .line 555
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    return v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    invoke-static {v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 558
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->data:I

    :goto_0
    return v1
.end method

.method private initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;
    .locals 3
    .param p1, "mode"    # I
    .param p2, "timePickerView"    # Lcom/google/android/material/timepicker/TimePickerView;
    .param p3, "textInputStub"    # Landroid/view/ViewStub;

    .line 419
    if-nez p1, :cond_1

    .line 420
    nop

    .line 421
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0, p2, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 425
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    return-object v0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    if-nez v0, :cond_2

    .line 429
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 430
    .local v0, "textInputView":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 433
    .end local v0    # "textInputView":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->clearCheck()V

    .line 435
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    return-object v0
.end method

.method private static newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 4
    .param p0, "options"    # Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 127
    new-instance v0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    .line 128
    .local v0, "fragment":Lcom/google/android/material/timepicker/MaterialTimePicker;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "TIME_PICKER_TIME_MODEL"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    :cond_0
    const-string v2, "TIME_PICKER_TITLE_RES"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$200(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    const-string v2, "TIME_PICKER_TITLE_TEXT"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    const-string v2, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    :cond_2
    const-string v2, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$600(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    const-string v2, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 145
    :cond_3
    const-string v2, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$800(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->setArguments(Landroid/os/Bundle;)V

    .line 148
    return-object v0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 244
    if-nez p1, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    const-string v0, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 249
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 253
    .local v1, "defaultInputMode":I
    :goto_0
    const-string v0, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 254
    const-string v0, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 255
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    .line 256
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 257
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 258
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 259
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 260
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    .line 261
    return-void
.end method

.method private updateCancelButtonVisibility()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 415
    :cond_1
    return-void
.end method

.method private updateInputMode(Lcom/google/android/material/button/MaterialButton;)V
    .locals 3
    .param p1, "modeButton"    # Lcom/google/android/material/button/MaterialButton;

    .line 392
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->hide()V

    .line 400
    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    .line 401
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 402
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->show()V

    .line 403
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 404
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->dataForMode(I)Landroid/util/Pair;

    move-result-object v0

    .line 405
    .local v0, "buttonData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->sendAccessibilityEvent(I)V

    .line 409
    return-void

    .line 393
    .end local v0    # "buttonData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 510
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 534
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 482
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 461
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 527
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 551
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 499
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 478
    return-void
.end method

.method public getHour()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    return v0
.end method

.method getTimePickerClockPresenter()Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    return-object v0
.end method

.method synthetic lambda$onViewCreated$0$com-google-android-material-timepicker-MaterialTimePicker()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    instance-of v0, v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    check-cast v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 342
    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 361
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 362
    .local v1, "listener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 363
    .end local v1    # "listener":Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0

    .line 364
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 365
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 225
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->restoreState(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 187
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getThemeResId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget v3, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 197
    .local v2, "background":Lcom/google/android/material/shape/MaterialShapeDrawable;
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker:[I

    sget v4, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    .line 198
    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 204
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    .line 205
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    .line 206
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTimePicker_backgroundTint:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 208
    .local v4, "backgroundColor":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 211
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 213
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 216
    const/4 v6, -0x2

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 218
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 220
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 269
    sget v0, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    .line 270
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    .local v0, "root":Landroid/view/ViewGroup;
    sget v1, Lcom/google/android/material/R$id;->material_timepicker_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/TimePickerView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 272
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 273
    sget v1, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    .line 274
    sget v1, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iput-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 275
    sget v1, Lcom/google/android/material/R$id;->header_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    .local v1, "headerTitle":Landroid/widget/TextView;
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    if-eqz v2, :cond_0

    .line 278
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 284
    sget v2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 285
    .local v2, "okButton":Landroid/widget/Button;
    new-instance v3, Lcom/google/android/material/timepicker/MaterialTimePicker$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$1;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    if-eqz v3, :cond_2

    .line 296
    iget v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_3
    :goto_1
    sget v3, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    .line 302
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/google/android/material/timepicker/MaterialTimePicker$2;

    invoke-direct {v4, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$2;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    if-eqz v3, :cond_4

    .line 313
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    iget v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 314
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 315
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    .line 320
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v4, Lcom/google/android/material/timepicker/MaterialTimePicker$3;

    invoke-direct {v4, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$3;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 349
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 351
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 352
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 353
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 355
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 357
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 369
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 370
    .local v1, "listener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 371
    .end local v1    # "listener":Landroid/content/DialogInterface$OnDismissListener;
    goto :goto_0

    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 374
    return-void
.end method

.method public onDoubleTap()V
    .locals 1

    .line 386
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 387
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 389
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 231
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "TIME_PICKER_TIME_MODEL"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    const-string v0, "TIME_PICKER_INPUT_MODE"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v0, "TIME_PICKER_TITLE_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 238
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 240
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 334
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    instance-of v0, v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/google/android/material/timepicker/MaterialTimePicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_0
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 518
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 542
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 490
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 469
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setActivePresenter(Lcom/google/android/material/timepicker/TimePickerPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 456
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 457
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "cancelable"    # Z

    .line 378
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 379
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    .line 380
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .line 173
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 159
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 163
    :cond_0
    return-void
.end method
