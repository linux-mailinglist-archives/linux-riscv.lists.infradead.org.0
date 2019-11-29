Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269CD10D0CE
	for <lists+linux-riscv@lfdr.de>; Fri, 29 Nov 2019 05:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeZ/KrRAMXh1OFsvgcgiHtWBC07kuGJMyzpyxnfnafI=; b=l41Tj/Mk+tjoP0
	iKoU3Wd8AGojUlGfp2CGBFfIFYJsFLv0NOl4WixfSMgj/OV9nxO+DWw75L7VuCg6Z4K8kHVY1uz6F
	Mdfg/dOZXobQ/OYaifer0LHTFoS+E02lE0k1AJ8RXDpBpkflwGlUC+SgitUUNiaJPvvuwTAGVji3H
	K8kmgAc9hM6oVfD5f8RkijsKeNfZIemN97piH7gBT2lsyaaYqKjvviOi2Cms6EiFgo1zzd71DLlGP
	MF4WG4nK/Y132uGSTgFPfYxEnRxiHSats+4J48V3LTRmuUx+qE7j7NVIZiWsi4KGagSaRIg62ULWq
	dMKums8GLNT8I7VCnmSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaYLc-0002Mq-K0; Fri, 29 Nov 2019 04:57:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaYLZ-0002MS-DT
 for linux-riscv@lists.infradead.org; Fri, 29 Nov 2019 04:57:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so2465215wru.4
 for <linux-riscv@lists.infradead.org>; Thu, 28 Nov 2019 20:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x+UovWnOcc7574kXHyy4DU6aP6VVJzEuPCh9sT3Svrk=;
 b=oufU29YJxUNme/kS+9fBHXM7Rv95+Xe7MCqRyXmcG3GuV8XqY37caYZMNMApj9l+1a
 ilMiQFcv9NHCisDkPSHzRK6U+4Y4eOWLUOzdcl/K3XWRgBee8KX47RNHCQDN3oQ5Jdel
 hzyMfr0Fcth1kWhsXihuStsc5d79AZ2NvizwEgrtdaJUji9kaGem6dRuaxASDN4eXgF3
 KMSZOhUZqdos4LYYyyiozPKs8k+IW5r1hJ1bBUBpvoJYHm7953O1mxQqrhSl0BIkdqzO
 EyqhmDxf2utJaHYIIuGRvEJYapwExwgdemSFo+I8pnzH20bb6TXkqx/qM3flN22Y5MbQ
 lJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x+UovWnOcc7574kXHyy4DU6aP6VVJzEuPCh9sT3Svrk=;
 b=IpWWJI5BSQfbGNH33HDvdgoxY4q7ayqe/fIzWp4jxTN0RLX/2msWsEizWRxrv4hFK+
 KY9MEJZwQFjzTo0ocOPMghzSg8bOnDJE/3LaNveLv7lp+I0al3MZiT2sSbhtMKTRfABU
 Apnlg0jUcgAecA1utaWaGXaWUYbhEjkk/2A7te0cqcDq5sjbQMnz/c14HfapLoQ9l2td
 MOh8BgTb7gZg3IJ2uefn1z9ATx2UjI2oK/r9uTDy4xoVN5ZHvwLeh1h58Sn2KatuOQP7
 whPlDLehlB7jcuaDtyMqNIW78Sbx5DM8s5gvVm5xvBirLqtCq4RMj8CWirFbtV5V2Nte
 qNgQ==
X-Gm-Message-State: APjAAAXHnKoYJpCgVZ6XITCMat+GD1V8UDl5Qfwuf3bSuEViqaAEk+JD
 Fv2IPHQu2lJAgqYXp8UjX6lHz9NdRfpU5grFiRNEsQ==
X-Google-Smtp-Source: APXvYqzdcqgAT7bBFM7PmfDMQda6lf+Z069+3mZEjLfSrjs6RikFVaRA5nd6sVvJGYv6SsIUOdfDY0iIhIRB5DPkxLQ=
X-Received: by 2002:a5d:4752:: with SMTP id o18mr3333973wrs.330.1575003455452; 
 Thu, 28 Nov 2019 20:57:35 -0800 (PST)
MIME-Version: 1.0
References: <20191126190503.19303-1-atish.patra@wdc.com>
 <20191126190503.19303-5-atish.patra@wdc.com>
 <CAAhSdy1WP0K+v-Nk9CJ9phVTiUR9RTUATwV-Qk_tTg6MjE_rrQ@mail.gmail.com>
In-Reply-To: <CAAhSdy1WP0K+v-Nk9CJ9phVTiUR9RTUATwV-Qk_tTg6MjE_rrQ@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 29 Nov 2019 10:27:23 +0530
Message-ID: <CAAhSdy2rqz-1nZRdb7GgoAvFmqodOZTF_CAYha5ZwvZ1voXnog@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] RISC-V: Implement new SBI v0.2 extensions
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_205737_461887_E747898D 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Mike Rapoport <rppt@linux.ibm.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:21 AM Anup Patel <anup@brainfault.org> wrote:
>
> Hi Atish,
>
> Found few bugs while playing with this patch.
>
> See below ....
>
> On Wed, Nov 27, 2019 at 12:35 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > Few v0.1 SBI calls are being replaced by new SBI calls that follows
> > v0.2 calling convention. The specification changes can be found at
> >
> > riscv/riscv-sbi-doc#27
> >
> > Implement the replacement extensions and few additional new SBI
> > function calls that makes way for a better SBI interface in future.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>
> > ---
> >  arch/riscv/include/asm/sbi.h |  35 ++++++
> >  arch/riscv/kernel/sbi.c      | 208 +++++++++++++++++++++++++++++++++--
> >  2 files changed, 236 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index cc82ae63f8e0..54ba9eebec11 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -22,6 +22,9 @@ enum sbi_ext_id {
> >         SBI_EXT_0_1_SHUTDOWN = 0x8,
> >  #endif
> >         SBI_EXT_BASE = 0x10,
> > +       SBI_EXT_TIME = 0x54494D45,
> > +       SBI_EXT_IPI = 0x735049,
> > +       SBI_EXT_RFENCE = 0x52464E43,
> >  };
> >
> >  enum sbi_ext_base_fid {
> > @@ -34,6 +37,24 @@ enum sbi_ext_base_fid {
> >         SBI_BASE_GET_MIMPID,
> >  };
> >
> > +enum sbi_ext_time_fid {
> > +       SBI_EXT_TIME_SET_TIMER = 0,
> > +};
> > +
> > +enum sbi_ext_ipi_fid {
> > +       SBI_EXT_IPI_SEND_IPI = 0,
> > +};
> > +
> > +enum sbi_ext_rfence_fid {
> > +       SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> > +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> > +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> > +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> > +};
> > +
> >  #define SBI_SPEC_VERSION_DEFAULT       0x1
> >  #define SBI_SPEC_VERSION_MAJOR_OFFSET  24
> >  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> > @@ -74,6 +95,20 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >                                 unsigned long start,
> >                                 unsigned long size,
> >                                 unsigned long asid);
> > +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> > +                          unsigned long start,
> > +                          unsigned long size);
> > +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> > +                               unsigned long start,
> > +                               unsigned long size,
> > +                               unsigned long vmid);
> > +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> > +                          unsigned long start,
> > +                          unsigned long size);
> > +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> > +                               unsigned long start,
> > +                               unsigned long size,
> > +                               unsigned long asid);
> >  int sbi_probe_extension(long ext);
> >
> >  /* Check if current SBI specification version is 0.1 or not */
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index ee710bfe0b0e..af3d5f8d8af7 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -205,6 +205,101 @@ static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> >  }
> >  #endif /* CONFIG_RISCV_SBI_V01 */
> >
> > +static void __sbi_set_timer_v02(uint64_t stime_value)
> > +{
> > +#if __riscv_xlen == 32
> > +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value,
> > +                         stime_value >> 32, 0, 0, 0, 0);
> > +#else
> > +       sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
> > +                 0, 0, 0, 0);
> > +#endif
> > +}
> > +
> > +static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
> > +{
> > +       unsigned long hmask_val;
> > +       struct sbiret ret = {0};
> > +       int result;
> > +
> > +       if (!hart_mask)
> > +               hmask_val = *(cpumask_bits(cpu_online_mask));
> > +       else
> > +               hmask_val = *hart_mask;
> > +
> > +       ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
> > +                       0, 0, 0, 0, 0);
> > +       if (ret.error) {
> > +               pr_err("%s: failed with error [%d]\n", __func__,
> > +                       sbi_err_map_linux_errno(ret.error));
> > +               result = ret.error;
> > +       } else
> > +               result = ret.value;
> > +
> > +       return result;
> > +}
> > +
> > +static int __sbi_rfence_v02(unsigned long extid, unsigned long fid,
> > +                            const unsigned long *hart_mask,
> > +                            unsigned long hbase, unsigned long start,
> > +                            unsigned long size, unsigned long arg4,
> > +                            unsigned long arg5)
> > +{
> > +       unsigned long hmask_val;
> > +       struct sbiret ret = {0};
> > +       int result;
> > +       unsigned long ext = SBI_EXT_RFENCE;
> > +
> > +       if (!hart_mask)
> > +               hmask_val = *(cpumask_bits(cpu_online_mask));
> > +       else
> > +               hmask_val = *hart_mask;
> > +
> > +       switch (fid) {
> > +       case SBI_EXT_RFENCE_REMOTE_FENCE_I:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       /*TODO: Handle non zero hbase cases */
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, 0, 0);
> > +               break;
> > +       case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
> > +               ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> > +                               size, arg4, 0);
> > +               break;
> > +       default:
> > +               pr_err("unknown function ID [%lu] for SBI extension [%lu]\n",
> > +                       fid, ext);
> > +               result = -EINVAL;
> > +       }
> > +
> > +       if (ret.error) {
> > +               pr_err("%s: failed with error [%d]\n", __func__,
> > +                       sbi_err_map_linux_errno(ret.error));
> > +               result = ret.error;
> > +       } else
> > +               result = ret.value;
> > +
> > +       return result;
> > +}
> > +
> >  /**
> >   * sbi_set_timer() - Program the timer for next timer event.
> >   * @stime_value: The value after which next timer event should fire.
> > @@ -237,7 +332,7 @@ EXPORT_SYMBOL(sbi_send_ipi);
> >   */
> >  void sbi_remote_fence_i(const unsigned long *hart_mask)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
> >                      hart_mask, 0, 0, 0, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_fence_i);
> > @@ -255,7 +350,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> >                                          unsigned long start,
> >                                          unsigned long size)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
> > +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> >                      hart_mask, 0, start, size, 0, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma);
> > @@ -276,11 +372,93 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >                                               unsigned long size,
> >                                               unsigned long asid)
> >  {
> > -       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> > +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
> > +                    SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> >                      hart_mask, 0, start, size, asid, 0);
> >  }
> >  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
> >
> > +/**
> > + * sbi_remote_hfence_gvma() - Execute HFENCE.GVMA instructions on given remote
> > + *                        harts for the specified guest physical address range.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the guest physical address
> > + * @size: Total size of the guest physical address range.
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> > +                                        unsigned long start,
> > +                                        unsigned long size)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> > +                           hart_mask, 0, start, size, 0, 0);
> > +}
> > +EXPORT_SYMBOL_GPL(sbi_remote_hfence_gvma);
> > +
> > +/**
> > + * sbi_remote_hfence_gvma_vmid() - Execute HFENCE.GVMA instructions on given
> > + * remote harts for a guest physical address range belonging to a specific VMID.
> > + *
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the guest physical address
> > + * @size: Total size of the guest physical address range.
> > + * @vmid: The value of guest ID (VMID).
> > + *
> > + * Return: 0 if success, Error otherwise.
> > + */
> > +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> > +                                             unsigned long start,
> > +                                             unsigned long size,
> > +                                             unsigned long vmid)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > +                           SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> > +                           hart_mask, 0, start, size, vmid, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_gvma_vmid);
> > +
> > +/**
> > + * sbi_remote_hfence_vvma() - Execute HFENCE.VVMA instructions on given remote
> > + *                          harts for the current guest virtual address range.
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the current guest virtual address
> > + * @size: Total size of the current guest virtual address range.
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> > +                                        unsigned long start,
> > +                                        unsigned long size)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> > +                           hart_mask, 0, start, size, 0, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_vvma);
> > +
> > +/**
> > + * sbi_remote_hfence_vvma_asid() - Execute HFENCE.VVMA instructions on given
> > + * remote harts for current guest virtual address range belonging to a specific
> > + * ASID.
> > + *
> > + * @hart_mask: A cpu mask containing all the target harts.
> > + * @start: Start of the current guest virtual address
> > + * @size: Total size of the current guest virtual address range.
> > + * @asid: The value of address space identifier (ASID).
> > + *
> > + * Return: None
> > + */
> > +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> > +                                             unsigned long start,
> > +                                             unsigned long size,
> > +                                             unsigned long asid)
> > +{
> > +       return __sbi_rfence(SBI_EXT_RFENCE,
> > +                           SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> > +                           hart_mask, 0, start, size, asid, 0);
> > +}
> > +EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
> > +
> >  /**
> >   * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
> >   * @extid: The extension ID to be probed.
> > @@ -356,11 +534,27 @@ int __init sbi_init(void)
> >         if (!sbi_spec_is_0_1()) {
> >                 pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
> >                         sbi_get_firmware_id(), sbi_get_firmware_version());
> > +               if (sbi_probe_extension(SBI_EXT_TIME) > 0) {
> > +                       __sbi_set_timer = __sbi_set_timer_v02;
> > +                       pr_info("SBI v0.2 TIME extension detected\n");
> > +               } else
> > +                       __sbi_set_timer = __sbi_set_timer_dummy_warn;
> This should be:
>
> #if IS_ENABLED(RISCV_SBI_V01)
>                        __sbi_rfence    = __sbi_set_timer_v01;
> #else
>                        __sbi_rfence    = __sbi_set_timer_dummy_warn;
> #endif

Instead of this, just do the following:
                        __sbi_rfence    = __sbi_set_timer_v01;

>
> > +               if (sbi_probe_extension(SBI_EXT_IPI) > 0) {
> > +                       __sbi_send_ipi  = __sbi_send_ipi_v02;
> > +                       pr_info("SBI v0.2 IPI extension detected\n");
> > +               } else
> > +                       __sbi_send_ipi = __sbi_send_ipi_dummy_warn;
> This should be:
>
> #if IS_ENABLED(RISCV_SBI_V01)
>                        __sbi_rfence    = __sbi_ipi_v01;
> #else
>                        __sbi_rfence    = __sbi_send_ipi_dummy_warn;
> #endif

Instead of this, just do the following:
                        __sbi_rfence    = __sbi_ipi_v01;

>
> > +               if (sbi_probe_extension(SBI_EXT_RFENCE) > 0) {
> > +                       __sbi_rfence    = __sbi_rfence_v02;
> > +                       pr_info("SBI v0.2 RFENCE extension detected\n");
> > +               } else
> > +                       __sbi_rfence    = __sbi_rfence_dummy_warn;
> This should be:
>
> #if IS_ENABLED(RISCV_SBI_V01)
>                        __sbi_rfence    = __sbi_rfence_v01;
> #else
>                        __sbi_rfence    = __sbi_rfence_dummy_warn;
> #endif

Instead of this, just do the following:
                        __sbi_rfence    = __sbi_rfence_v01;
>
> > +
> > +       } else {
> > +               __sbi_set_timer = __sbi_set_timer_v01;
> > +               __sbi_send_ipi  = __sbi_send_ipi_v01;
> > +               __sbi_rfence    = __sbi_rfence_v01;
>
> This should be:
>
> #if IS_ENABLED(RISCV_SBI_V01)
>                __sbi_set_timer = __sbi_set_timer_v01;
>                __sbi_send_ipi  = __sbi_send_ipi_v01;
>                __sbi_rfence    = __sbi_rfence_v01;
> #else
>                __sbi_set_timer = __sbi_set_timer_dummy_warn;
>                __sbi_send_ipi  = __sbi_send_ipi_dummy_warn;
>                __sbi_rfence    = __sbi_rfence_dummy_warn;
> #endif

This is not required.

> >         }
> >
> > -       __sbi_set_timer = __sbi_set_timer_v01;
> > -       __sbi_send_ipi  = __sbi_send_ipi_v01;
> > -       __sbi_rfence    = __sbi_rfence_v01;
> > -
> >         return 0;
> >  }
> > --
> > 2.23.0
> >
>
> Regards,
> Anup

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
