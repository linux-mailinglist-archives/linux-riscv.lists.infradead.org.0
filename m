Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED071523E5
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Feb 2020 01:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWMKFLmlf0AFDRFWSiZ8w6uqCqE+fpwvOde/KKxdspU=; b=ty5gb4WnClkhj7BhMicXxoT9C
	j3YeGRfgYFh6hgtmu6UlDN6yIBpjKqV/XPPgMo+xSPS1UbajmS9FeJSI7uQvyC5Yym3KJ+8a7IdLV
	K2R+GTogSLXaN5Udi2l0T3R0d0nUSgc0eeZfJSfc4eNDlwkKpITEvProALJvF1tgMWrBcjwUJr14i
	KWcnuqZPmMU3ZQwMSAZVfA2tQJHUjxcTarya8jtO6rPdjLiqVHhbgK4RvpndUBc24k29JxXjVtB2n
	PL98tUiobjGGF2og/+ESTxuaLIm5zTRy7IK9jE8d4XNJcXguzXp8i935wrZtyWkcXdt8p5Tj7s2vL
	DC72jyl8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Hn-0001ZL-QD; Wed, 05 Feb 2020 00:11:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8Hj-0001YN-Jv
 for linux-riscv@lists.infradead.org; Wed, 05 Feb 2020 00:11:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id s144so3267819wme.1
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 16:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TWMKFLmlf0AFDRFWSiZ8w6uqCqE+fpwvOde/KKxdspU=;
 b=UzXC10dzSBLQ6VuzAQoUhXzFUQGOwSYE9pgvmC4LdvMdbspO/S66nkO9wvjlrrWPxv
 XmpPUMQeEkO4AlU7kNm8UuYh2Y/CGxeVUlRJM5H/wP52De5/xUDjVecYTOwndzFU5AwE
 NZws3UwOhqUJregkBG8US/i/nsP76mr8mcg9+Uu2Wdu+lq69qChmxrW0+Ep+aUwKP2r9
 b1U9sLmEZ6Jl0WmsZgKq2tp3C9hWjupzpAOBYTT4QVVYvGnIni+fUQztb8/N68uIDjoC
 htpTV8DM86H9wU7dI8uSUo+3VQ5BVP/N9LGzOKbTzJrBjXQUABGjZq2SMuD6DvMkpiW6
 yRyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TWMKFLmlf0AFDRFWSiZ8w6uqCqE+fpwvOde/KKxdspU=;
 b=ZkY05UzkGO7NRipFAmUx+lS+qfl/KW7HCVJzFvegm+VvErU4w1FO9l+7kB0T5RNnXF
 PczKdeu0gYxWG98rhUI9d6fEozIx2rLEGNpEkB/W4zeBs9SvKJ0aPMwBqUewlMF+HCiE
 QNR0OtmB2E/27AkYMP2Nq3zULiYUXovffccHD09sR54dlolrnRFRASPr4aVy/qaDg4Nb
 0qokqhzbZ87DPcR05DlZXs0627wCCsglqmqPc3qkJ2CdQZAP5tSssZYzPSfAjFXbCTvX
 6Xgw9mauMyqisOmE/0Y02SUARaOL6FqFTZZbsb8g1odvN6A4R3q0sfcnPkLl/FydVrPq
 ZN4w==
X-Gm-Message-State: APjAAAW5ctfcOjaIQ3gZVanQga96W7yL2QKtwdkp2FOElIpd0PYatgIX
 goxGwo+4KzKsOl4u2Wng/oAJN2DoYotLl0vO5AUJ
X-Google-Smtp-Source: APXvYqyKn7KiPsuTjAOLqvpLY/n/dJ8r3z/19YegWM4nHyPKdgW4wlCJdMsTKLmliBy70QFIoNJttpnb7pGPVhaml7w=
X-Received: by 2002:a1c:a404:: with SMTP id n4mr1570224wme.186.1580861473308; 
 Tue, 04 Feb 2020 16:11:13 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-9-atish.patra@wdc.com>
 <CAAhSdy1DtsPeKYrSDuqNUirDixypvrd42xQnr1bVExc8XE-Npw@mail.gmail.com>
In-Reply-To: <CAAhSdy1DtsPeKYrSDuqNUirDixypvrd42xQnr1bVExc8XE-Npw@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 4 Feb 2020 16:11:02 -0800
Message-ID: <CAOnJCUJtUHKE_+hXemkxwoa1M0GpQYQVxbw-5ScnGcHf_xZd-Q@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] RISC-V: Add SBI HSM extension
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_161115_795411_87A3D198 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 nickhu@andestech.com, Vincent Chen <vincent.chen@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>, Abner Chang <abner.chang@hpe.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 8:54 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Jan 28, 2020 at 7:58 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > SBI specification defines HSM extension that allows to start/stop a hart
> > by a supervisor anytime. The specification is available at
> >
> > https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> >
> > Implement SBI HSM extension.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 22 ++++++++++++++++
> >  arch/riscv/kernel/sbi.c      | 51 ++++++++++++++++++++++++++++++++++++
> >  2 files changed, 73 insertions(+)
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index d55d8090ab5c..bed6fa26ec84 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -26,6 +26,7 @@ enum sbi_ext_id {
> >         SBI_EXT_TIME = 0x54494D45,
> >         SBI_EXT_IPI = 0x735049,
> >         SBI_EXT_RFENCE = 0x52464E43,
> > +       SBI_EXT_HSM = 0x48534D,
> >  };
> >
> >  enum sbi_ext_base_fid {
> > @@ -56,6 +57,12 @@ enum sbi_ext_rfence_fid {
> >         SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> >  };
> >
> > +enum sbi_ext_hsm_fid {
> > +       SBI_EXT_HSM_HART_START = 0,
> > +       SBI_EXT_HSM_HART_STOP,
> > +       SBI_EXT_HSM_HART_STATUS,
> > +};
> > +
>
> I think we should also define the possible return values of
> SBI_EXT_HSM_HART_STATUS function.
>

Done.

> >  #define SBI_SPEC_VERSION_DEFAULT       0x1
> >  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
> >  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> > @@ -70,6 +77,7 @@ enum sbi_ext_rfence_fid {
> >  #define SBI_ERR_INVALID_ADDRESS -5
> >
> >  extern unsigned long sbi_spec_version;
> > +extern bool sbi_hsm_avail;
> >  struct sbiret {
> >         long error;
> >         long value;
> > @@ -110,8 +118,18 @@ int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> >                                 unsigned long start,
> >                                 unsigned long size,
> >                                 unsigned long asid);
> > +int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> > +                      unsigned long priv);
> > +int sbi_hsm_hart_stop(void);
> > +int sbi_hsm_hart_get_status(unsigned long hartid);
> > +
> >  int sbi_probe_extension(int ext);
> >
> > +static inline bool sbi_hsm_is_available(void)
> > +{
> > +       return sbi_hsm_avail;
> > +}
> > +
> >  /* Check if current SBI specification version is 0.1 or not */
> >  static inline int sbi_spec_is_0_1(void)
> >  {
> > @@ -137,5 +155,9 @@ void sbi_clear_ipi(void);
> >  void sbi_send_ipi(const unsigned long *hart_mask);
> >  void sbi_remote_fence_i(const unsigned long *hart_mask);
> >  void sbi_init(void);
> > +static inline bool sbi_hsm_is_available(void)
> > +{
> > +       return false;
> > +}
> >  #endif /* CONFIG_RISCV_SBI */
> >  #endif /* _ASM_RISCV_SBI_H */
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index 3c34aba30f6f..9bdc9801784d 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -12,6 +12,8 @@
> >
> >  /* default SBI version is 0.1 */
> >  unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
> > +bool sbi_hsm_avail;
> > +
> >  EXPORT_SYMBOL(sbi_spec_version);
> >
> >  static void (*__sbi_set_timer)(uint64_t stime);
> > @@ -496,6 +498,54 @@ static void sbi_power_off(void)
> >         sbi_shutdown();
> >  }
> >
> > +int sbi_hsm_hart_stop(void)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
> > +
> > +       if (!ret.error)
> > +               return ret.value;
> > +       else
> > +               return sbi_err_map_linux_errno(ret.error);
> > +}
> > +EXPORT_SYMBOL(sbi_hsm_hart_stop);
> > +
> > +int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> > +                      unsigned long priv)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
> > +                             hartid, saddr, priv, 0, 0, 0);
> > +       if (!ret.error)
> > +               return ret.value;
> > +       else
> > +               return sbi_err_map_linux_errno(ret.error);
> > +}
> > +EXPORT_SYMBOL(sbi_hsm_hart_start);
> > +
> > +int sbi_hsm_hart_get_status(unsigned long hartid)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
> > +                             hartid, 0, 0, 0, 0, 0);
> > +       if (!ret.error)
> > +               return ret.value;
> > +       else
> > +               return sbi_err_map_linux_errno(ret.error);
> > +}
> > +EXPORT_SYMBOL(sbi_hsm_hart_get_status);
> > +
> > +void __init sbi_hsm_ext_init(void)
> > +{
> > +       if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
> > +               pr_info("SBI v0.2 HSM extension detected\n");
> > +               sbi_hsm_avail = true;
> > +       }
> > +}
> > +
>
> If we start adding all present and future extensions in
> arch/riscv/kernel/sbi.c then it will blow-up.
>
> IMHO, we should only keep legacy and replacement
> extension in arch/riscv/kernel/sbi.c. All other extensions
> will be separate based on how they are integrated.
>
> For SBI HSM, all sbi_hsm_xyz() functions should be in
> arch/riscv/kernel/cpu_ops_sbi.c which will be only compiled
> when CONFIG_RISCV_SBI is enabled.
>
> Maybe merge PATCH8 and PATCH9 ?
>

Sure. I am fine with that. However, I think we don't need to move
spinwait ops to its
own file as it won't grow in the future. I have refactored the series
in the following way.

1. Move cpu_sbi_ops and sbi_hsm_xyz to its own file which can be
compiled out with CONFIG_RISCV_SBI.
2. Keep spinwait and other cpu_ops related functions in cpu_ops.c

Let me know if you think that's not a good idea.

> Regards,
> Anup
>
> >  int __init sbi_init(void)
> >  {
> >         int ret;
> > @@ -532,5 +582,6 @@ int __init sbi_init(void)
> >                 __sbi_rfence    = __sbi_rfence_v01;
> >         }
> >
> > +       sbi_hsm_ext_init();
>
> We don't need sbi_hsm_ext_init() because we can check
> and set CPU ops at boot-time in cpu_set_ops()
>
> >         return 0;
> >  }
> > --
> > 2.24.0
> >
>
> Regards,
> Anup
>


-- 
Regards,
Atish

