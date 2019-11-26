Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D40109845
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 05:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGSJ1Mz9bKAY+G/X2S6Syf52iQpFRorgW6zAP7yOSnA=; b=WxcoFbdUgqXIkl
	UuSNQZxj8VHmflnPYRr5i2ZPNWlXXWC5v959kzzuIl+1Y13YoNOu8gUK99qFa4yvoSvrCSaDw/b8W
	yMawzkeQMC4IJ7xATWZ3ca5aBCIcw0w6W5FM3CsxV7MfNZOh9Xu7rnpazz2lfSszLdCUufk417iMR
	Qoy/tvGcV9Em2jF139kURpHuSSL9Evuwd79oITrt7xHQ0w70z0rIXOYY7wKuHxD8BUyea7P8Qh/2M
	PVLNNBe0r+AE7jaXCgXYQwKhLZ1BCStZrhtMOFq8Lme0yvgJVcZ5zZmKMvlFaIubHpvkRCuwgxMhm
	5c7uPajnJYSijMun7GiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZSHd-0000Ap-1b; Tue, 26 Nov 2019 04:17:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZSHZ-0000AM-OE
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 04:16:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so20717159wrw.2
 for <linux-riscv@lists.infradead.org>; Mon, 25 Nov 2019 20:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DXUJ6mYgJEnLWQmGkhR0ZzzYYCSekxSw66ghFSEn43U=;
 b=HOADjThGLcxt8VK/IeKFhtiEKheua7XQzXRu4RaXJC4xyMevklb3C8W3PgHCA2iC7R
 ntuEMhfQI0Zs6++LyLNXsXmeDYj7coAO2SMs0cTkkVqNnrzDy86Q+ARCFlEO5/FjtdoA
 hr04bYX5OTE5urk539lUW5EwD9ptQNOuV7iu43B+g94B5aJVM34ALKqNtREb2vQaXUOI
 JkS1uYK6EFxXdL/7/xxyKuxioAFkO40VlIvQajFuhija/AcSp3KsJP7qjXQnXWDRoUKU
 bkgycFUJEZHtjVTU7B4Jp3PxVagegdWixZnGTIhxFs0Ndj7cVjz3+JuvQLjvKAxGgRKj
 R8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DXUJ6mYgJEnLWQmGkhR0ZzzYYCSekxSw66ghFSEn43U=;
 b=HLUAT8+py+K4uxoIMExLY476PXcwKMRdyMlRtSTaAmhgCfdvzUTCs4J3ebNCLz7dIa
 zJ4/aY+r28QSOLlJDOKHUyJrpKNQ2RqTmhCdeWGRundLGgF+V6hfMbUJffuuPPXPmsG6
 VQ4FPV24x4rtmJyywTIqg6GvhGUQ+j7giiMT0OC4mVu4mzJZmN2jo/8q5VTE7cOqh7oM
 tD+j4X4jKm7xePefpsB3NCba6FuVv1UOohqoL7IiaD3zRxryGmGeupYNBGmCHtjfe9ve
 WCj8jdd9mE4KLPs06xThlx8dxLLUGGGGCLfYNvPlC095obGIjwEgzrt+bQZjun90Vh9J
 WwrQ==
X-Gm-Message-State: APjAAAV3mL/1G3GknofIN4V18gGBzAXZEX8kg9T/hhZNT/TCj3+gpYlq
 TLKdQwyHeL3/LvXueKDvni1JzgoIpWlVuylLC/BwZQ==
X-Google-Smtp-Source: APXvYqxVIT3JokixjF3doontmCW9SOAl8bSpZFSUCGvDMN2uomkdCq3WqRwTLtbZwjs1qnIOmPlC0Y89INK8xc0p4Wk=
X-Received: by 2002:a5d:6b4d:: with SMTP id x13mr33187016wrw.96.1574741815597; 
 Mon, 25 Nov 2019 20:16:55 -0800 (PST)
MIME-Version: 1.0
References: <20191126032033.14825-1-atish.patra@wdc.com>
 <20191126032033.14825-5-atish.patra@wdc.com>
In-Reply-To: <20191126032033.14825-5-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 26 Nov 2019 09:46:44 +0530
Message-ID: <CAAhSdy3DXe_iCD9QanbQwoJZxwKcUFvE=gGSODHh=PmWG3C9+g@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] RISC-V: Implement new SBI v0.2 extensions
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_201657_790391_8FD8B9C8 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 8:50 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Few v0.1 SBI calls are being replaced by new SBI calls that follows
> v0.2 calling convention. The specification changes can be found at
>
> riscv/riscv-sbi-doc#27
>
> Implement the replacement extensions and few additional new SBI
> function calls that makes way for a better SBI interface in future.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h |  35 +++++++
>  arch/riscv/kernel/sbi.c      | 197 ++++++++++++++++++++++++++++++++++-
>  2 files changed, 229 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index cc82ae63f8e0..54ba9eebec11 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -22,6 +22,9 @@ enum sbi_ext_id {
>         SBI_EXT_0_1_SHUTDOWN = 0x8,
>  #endif
>         SBI_EXT_BASE = 0x10,
> +       SBI_EXT_TIME = 0x54494D45,
> +       SBI_EXT_IPI = 0x735049,
> +       SBI_EXT_RFENCE = 0x52464E43,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -34,6 +37,24 @@ enum sbi_ext_base_fid {
>         SBI_BASE_GET_MIMPID,
>  };
>
> +enum sbi_ext_time_fid {
> +       SBI_EXT_TIME_SET_TIMER = 0,
> +};
> +
> +enum sbi_ext_ipi_fid {
> +       SBI_EXT_IPI_SEND_IPI = 0,
> +};
> +
> +enum sbi_ext_rfence_fid {
> +       SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT       0x1
>  #define SBI_SPEC_VERSION_MAJOR_OFFSET  24
>  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> @@ -74,6 +95,20 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                                 unsigned long start,
>                                 unsigned long size,
>                                 unsigned long asid);
> +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> +                          unsigned long start,
> +                          unsigned long size);
> +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> +                               unsigned long start,
> +                               unsigned long size,
> +                               unsigned long vmid);
> +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> +                          unsigned long start,
> +                          unsigned long size);
> +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> +                               unsigned long start,
> +                               unsigned long size,
> +                               unsigned long asid);
>  int sbi_probe_extension(long ext);
>
>  /* Check if current SBI specification version is 0.1 or not */
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 8574de1074c4..74b3155b570f 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -205,6 +205,101 @@ static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
>  }
>  #endif /* CONFIG_RISCV_SBI_V01 */
>
> +static void __sbi_set_timer_v02(uint64_t stime_value)
> +{
> +#if __riscv_xlen == 32
> +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value,
> +                         stime_value >> 32, 0, 0, 0, 0);
> +#else
> +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
> +                 0, 0, 0, 0);
> +#endif
> +}
> +
> +static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
> +{
> +       unsigned long hmask_val;
> +       struct sbiret ret = {0};
> +       int result;
> +
> +       if (!hart_mask)
> +               hmask_val = *(cpumask_bits(cpu_online_mask));
> +       else
> +               hmask_val = *hart_mask;
> +
> +       ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
> +                       0, 0, 0, 0, 0);
> +       if (ret.error) {
> +               pr_err("%s: failed with error [%d]\n", __func__,
> +                       sbi_err_map_linux_errno(ret.error));
> +               result = ret.error;
> +       } else
> +               result = ret.value;
> +
> +       return result;
> +}
> +
> +static int __sbi_rfence_v02(unsigned long extid, unsigned long fid,
> +                            const unsigned long *hart_mask,
> +                            unsigned long hbase, unsigned long start,
> +                            unsigned long size, unsigned long arg4,
> +                            unsigned long arg5)
> +{
> +       unsigned long hmask_val;
> +       struct sbiret ret = {0};
> +       int result;
> +       unsigned long ext = SBI_EXT_RFENCE;
> +
> +       if (!hart_mask)
> +               hmask_val = *(cpumask_bits(cpu_online_mask));
> +       else
> +               hmask_val = *hart_mask;
> +
> +       switch (fid) {
> +       case SBI_EXT_RFENCE_REMOTE_FENCE_I:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0, 0);
> +               break;
> +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, 0, 0);
> +               break;
> +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, arg4, 0);
> +               break;
> +       /*TODO: Handle non zero hbase cases */
> +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, 0, 0);
> +               break;
> +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, arg4, 0);
> +               break;
> +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, 0, 0);
> +               break;
> +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
> +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +                               size, arg4, 0);
> +               break;
> +       default:
> +               pr_err("unknown function ID [%lu] for SBI extension [%lu]\n",
> +                       fid, ext);
> +               result = -EINVAL;
> +       }
> +
> +       if (ret.error) {
> +               pr_err("%s: failed with error [%d]\n", __func__,
> +                       sbi_err_map_linux_errno(ret.error));
> +               result = ret.error;
> +       } else
> +               result = ret.value;
> +
> +       return result;
> +}
> +
>  /**
>   * sbi_set_timer() - Program the timer for next timer event.
>   * @stime_value: The value after which next timer event should fire.
> @@ -237,7 +332,7 @@ EXPORT_SYMBOL(sbi_send_ipi);
>   */
>  void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
>                      hart_mask, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_fence_i);
> @@ -255,7 +350,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>                                          unsigned long start,
>                                          unsigned long size)
>  {
> -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
> +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
>                      hart_mask, 0, start, size, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma);
> @@ -276,11 +372,93 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                                               unsigned long size,
>                                               unsigned long asid)
>  {
> -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
> +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
>                      hart_mask, 0, start, size, asid, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
>
> +/**
> + * sbi_remote_hfence_gvma() - Execute HFENCE.GVMA instructions on given remote
> + *                        harts for the specified guest physical address range.
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the guest physical address
> + * @size: Total size of the guest physical address range.
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> +                                        unsigned long start,
> +                                        unsigned long size)
> +{
> +       return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +                           hart_mask, 0, start, size, 0, 0);
> +}
> +EXPORT_SYMBOL_GPL(sbi_remote_hfence_gvma);
> +
> +/**
> + * sbi_remote_hfence_gvma_vmid() - Execute HFENCE.GVMA instructions on given
> + * remote harts for a guest physical address range belonging to a specific VMID.
> + *
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the guest physical address
> + * @size: Total size of the guest physical address range.
> + * @vmid: The value of guest ID (VMID).
> + *
> + * Return: 0 if success, Error otherwise.
> + */
> +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> +                                             unsigned long start,
> +                                             unsigned long size,
> +                                             unsigned long vmid)
> +{
> +       return __sbi_rfence(SBI_EXT_RFENCE,
> +                           SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +                           hart_mask, 0, start, size, vmid, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_gvma_vmid);
> +
> +/**
> + * sbi_remote_hfence_vvma() - Execute HFENCE.VVMA instructions on given remote
> + *                          harts for the current guest virtual address range.
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the current guest virtual address
> + * @size: Total size of the current guest virtual address range.
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> +                                        unsigned long start,
> +                                        unsigned long size)
> +{
> +       return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +                           hart_mask, 0, start, size, 0, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_vvma);
> +
> +/**
> + * sbi_remote_hfence_vvma_asid() - Execute HFENCE.VVMA instructions on given
> + * remote harts for current guest virtual address range belonging to a specific
> + * ASID.
> + *
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the current guest virtual address
> + * @size: Total size of the current guest virtual address range.
> + * @asid: The value of address space identifier (ASID).
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> +                                             unsigned long start,
> +                                             unsigned long size,
> +                                             unsigned long asid)
> +{
> +       return __sbi_rfence(SBI_EXT_RFENCE,
> +                           SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +                           hart_mask, 0, start, size, asid, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
> +
>  /**
>   * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
>   * @extid: The extension ID to be probed.
> @@ -361,6 +539,19 @@ int __init sbi_init(void)
>         } else {
>                 pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
>                         sbi_get_firmware_id(), sbi_get_firmware_version());
> +               if (sbi_probe_extension(SBI_EXT_TIME) > 0)
> +                       __sbi_set_timer = __sbi_set_timer_v02;
> +               else
> +                       __sbi_set_timer = __sbi_set_timer_dummy_warn;
> +               if (sbi_probe_extension(SBI_EXT_IPI) > 0)
> +                       __sbi_send_ipi  = __sbi_send_ipi_v02;
> +               else
> +                       __sbi_send_ipi = __sbi_send_ipi_dummy_warn;
> +               if (sbi_probe_extension(SBI_EXT_RFENCE) > 0)
> +                       __sbi_rfence    = __sbi_rfence_v02;
> +               else
> +                       __sbi_rfence    = __sbi_rfence_dummy_warn;
> +
>         }
>
>         return 0;
> --
> 2.23.0
>

You might want to print whether TIMER, IPI and RFENCE extension
were detected at boot-time.

Otherwise, looks good.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
