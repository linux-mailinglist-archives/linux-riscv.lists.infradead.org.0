Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D7614AEC3
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 05:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6npXOuD/Bo9Epv5uCeYToBPL1sbhP+ZtGVUUhP+lSl4=; b=jFs9JTpmb+ngHRJiyS4gTFCxZ
	H2A8iW00g6e0ncFEQuW91dflaPQzLVx7ZZSDi/bv/nspN1topJPidfVkrLgXoHHw+j+WD4CeylZJs
	0iZkDQhYZwqCsprWjuzJA2nlAQXRs8FcYqqJBeC/yDU1hk35Tx+khQs08J0JStebvSZjHoBTyYSOM
	eblBr/2+E1/GgQegEvFAUWC/uSwr1oicZRUiNW5yBRkoyl0R/7klfekql0s4mRTQ0M/c1xJvVzMs0
	sVNn10X4cv3qrdetXJNuqnZgR2b7rHQick0vNyhHb90uWvaBYWmQ17uDj63cCH6NAkvNb4407WjWJ
	cB+fcJwJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwIts-0008P4-Hw; Tue, 28 Jan 2020 04:54:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwIto-0008OU-PA
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 04:54:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so14441862wrr.1
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 20:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6npXOuD/Bo9Epv5uCeYToBPL1sbhP+ZtGVUUhP+lSl4=;
 b=FMGXr3/X5d5MGN25hhpmHA0I89Je2TlY/luDe2ZDEyCBgWWLoS+USu2m9mWi6jIcDC
 CxpOLgkwdzLc5sLd4Ei2ZQYzU+OowUfHLM3nxn2E4q2VPaBV4W+5jBxyRZt1imd6O1QT
 njuUqLVVgLpOZLoYRPwBAo9HFifDcmyFuKTPyVI2HbbBCmDmj5c+/uaYqOFtD2UkWwAJ
 Z9DaVA4ml/+j43chulho0QtwQ+QhB+DMRWJFQ62sWaBvuh4MXmTTNseGTCuDkUW2G1lR
 /o81IkQ0lVL4L5TWP8yECxzfZqKmdMqPM6d0jpMUofOLmyyd7YiG2Ix04ue30OZR5MRs
 B/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6npXOuD/Bo9Epv5uCeYToBPL1sbhP+ZtGVUUhP+lSl4=;
 b=gO1b5cCphEdc0uE0R0nk87wcX6hzbA/zDhhzvbYgaUNPnhhxnm8Noq2iRIgzOOxLDu
 LPYJsJgDO+EcZGApcunYbnaJVzj/8eW7SdlSNE6Joxi0eY1dey4gO2Zn6dEwk23sAZu4
 d+0cYOO3XJeZKXOngXY0WZPdqL0qfNU4chgjEFLPxMo/LfsND+PyHww2kzz1S57vZD01
 olywdhHIJyJCoPPR/VFgqswdCkZeqp5H5KOIQePEIj961ChyNf2bgVmcrNltN8TiXW+N
 JZvcblCJClVBzDZnKO29S3UxSvnyBrO0IB9ZLX/w0AR1Yz++2WM7ClLlmqqa1LtFsBU3
 xjhA==
X-Gm-Message-State: APjAAAXdiTPDtb1upnI9OF1Qj9r8HyFW+Z48KDdgm5loB6tvNbHV6k3G
 2Rg2X8cQGmtXq4jQtO4sAxEUcTD9CYAsWGFtXfBz8g==
X-Google-Smtp-Source: APXvYqxO8qqIfHJxIrZsVj/r0pQPCXFKnUcnGiVAVQmGDRByQc1Hu/tzfYlYDbYF99jedC0aySwaqN7z1IVhDjGZGZE=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr26992846wrv.358.1580187290925; 
 Mon, 27 Jan 2020 20:54:50 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-9-atish.patra@wdc.com>
In-Reply-To: <20200128022737.15371-9-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 28 Jan 2020 10:24:39 +0530
Message-ID: <CAAhSdy1DtsPeKYrSDuqNUirDixypvrd42xQnr1bVExc8XE-Npw@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] RISC-V: Add SBI HSM extension
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_205452_822279_3D2EFF5B 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, Abner Chang <abner.chang@hpe.com>,
 nickhu@andestech.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Palmer Dabbelt <palmer@dabbelt.com>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 7:58 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> SBI specification defines HSM extension that allows to start/stop a hart
> by a supervisor anytime. The specification is available at
>
> https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
>
> Implement SBI HSM extension.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 22 ++++++++++++++++
>  arch/riscv/kernel/sbi.c      | 51 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 73 insertions(+)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index d55d8090ab5c..bed6fa26ec84 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -26,6 +26,7 @@ enum sbi_ext_id {
>         SBI_EXT_TIME = 0x54494D45,
>         SBI_EXT_IPI = 0x735049,
>         SBI_EXT_RFENCE = 0x52464E43,
> +       SBI_EXT_HSM = 0x48534D,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -56,6 +57,12 @@ enum sbi_ext_rfence_fid {
>         SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
>  };
>
> +enum sbi_ext_hsm_fid {
> +       SBI_EXT_HSM_HART_START = 0,
> +       SBI_EXT_HSM_HART_STOP,
> +       SBI_EXT_HSM_HART_STATUS,
> +};
> +

I think we should also define the possible return values of
SBI_EXT_HSM_HART_STATUS function.

>  #define SBI_SPEC_VERSION_DEFAULT       0x1
>  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
>  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> @@ -70,6 +77,7 @@ enum sbi_ext_rfence_fid {
>  #define SBI_ERR_INVALID_ADDRESS -5
>
>  extern unsigned long sbi_spec_version;
> +extern bool sbi_hsm_avail;
>  struct sbiret {
>         long error;
>         long value;
> @@ -110,8 +118,18 @@ int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
>                                 unsigned long start,
>                                 unsigned long size,
>                                 unsigned long asid);
> +int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> +                      unsigned long priv);
> +int sbi_hsm_hart_stop(void);
> +int sbi_hsm_hart_get_status(unsigned long hartid);
> +
>  int sbi_probe_extension(int ext);
>
> +static inline bool sbi_hsm_is_available(void)
> +{
> +       return sbi_hsm_avail;
> +}
> +
>  /* Check if current SBI specification version is 0.1 or not */
>  static inline int sbi_spec_is_0_1(void)
>  {
> @@ -137,5 +155,9 @@ void sbi_clear_ipi(void);
>  void sbi_send_ipi(const unsigned long *hart_mask);
>  void sbi_remote_fence_i(const unsigned long *hart_mask);
>  void sbi_init(void);
> +static inline bool sbi_hsm_is_available(void)
> +{
> +       return false;
> +}
>  #endif /* CONFIG_RISCV_SBI */
>  #endif /* _ASM_RISCV_SBI_H */
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 3c34aba30f6f..9bdc9801784d 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -12,6 +12,8 @@
>
>  /* default SBI version is 0.1 */
>  unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
> +bool sbi_hsm_avail;
> +
>  EXPORT_SYMBOL(sbi_spec_version);
>
>  static void (*__sbi_set_timer)(uint64_t stime);
> @@ -496,6 +498,54 @@ static void sbi_power_off(void)
>         sbi_shutdown();
>  }
>
> +int sbi_hsm_hart_stop(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
> +
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return sbi_err_map_linux_errno(ret.error);
> +}
> +EXPORT_SYMBOL(sbi_hsm_hart_stop);
> +
> +int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> +                      unsigned long priv)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
> +                             hartid, saddr, priv, 0, 0, 0);
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return sbi_err_map_linux_errno(ret.error);
> +}
> +EXPORT_SYMBOL(sbi_hsm_hart_start);
> +
> +int sbi_hsm_hart_get_status(unsigned long hartid)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
> +                             hartid, 0, 0, 0, 0, 0);
> +       if (!ret.error)
> +               return ret.value;
> +       else
> +               return sbi_err_map_linux_errno(ret.error);
> +}
> +EXPORT_SYMBOL(sbi_hsm_hart_get_status);
> +
> +void __init sbi_hsm_ext_init(void)
> +{
> +       if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
> +               pr_info("SBI v0.2 HSM extension detected\n");
> +               sbi_hsm_avail = true;
> +       }
> +}
> +

If we start adding all present and future extensions in
arch/riscv/kernel/sbi.c then it will blow-up.

IMHO, we should only keep legacy and replacement
extension in arch/riscv/kernel/sbi.c. All other extensions
will be separate based on how they are integrated.

For SBI HSM, all sbi_hsm_xyz() functions should be in
arch/riscv/kernel/cpu_ops_sbi.c which will be only compiled
when CONFIG_RISCV_SBI is enabled.

Maybe merge PATCH8 and PATCH9 ?

Regards,
Anup

>  int __init sbi_init(void)
>  {
>         int ret;
> @@ -532,5 +582,6 @@ int __init sbi_init(void)
>                 __sbi_rfence    = __sbi_rfence_v01;
>         }
>
> +       sbi_hsm_ext_init();

We don't need sbi_hsm_ext_init() because we can check
and set CPU ops at boot-time in cpu_set_ops()

>         return 0;
>  }
> --
> 2.24.0
>

Regards,
Anup

