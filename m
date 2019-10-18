Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02898DBB94
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yOt6JN92BYvJgT/VCdKc0iwbLa2Vb1X2dpO2v1Nbqc=; b=eR6fmrHiiTM2Vn
	N3MR32afrbxXZXP08TcKzp6M8TSccb4mudnDCPtmg8pcwdGGIh5CQpDgkwPiYv2/meCNLwgwdCw4j
	CR1Fta/BwciaLrP7RSOngIpcS5Ab4nwT9ptCeJB87U6Rr64pygmEfs7lsdkZKWgCX5399ACU6b3Pr
	nw4hQn7l/1204rhnJDTHJz73CDNtDGM3s4To7Do+QIYbY39uZZDFva8SJxUe7hKf1b8xO7rBQ/QDA
	z3aOupjwlqB8eOkmB2RB5qFp3vYrYddWXz1O2EuyscOXWOmX+0w6ikBirxYjifs45V/aLCrhDlP+B
	eJ6ScElIVqcbub8DhAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIa3-0006MK-IE; Fri, 18 Oct 2019 03:05:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIZz-0006Lg-6A
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:05:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id n14so4506295wrw.9
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2q04YyZCM/Y6pG2YfTJ87FPtLWST+udBScdMOgSCybA=;
 b=wp/0Fljr7FKzaAAjHiELGcBO2MBzYFb3WAHCKN2gWiKfdN3vbVJj0CJBtTNt1Ip3Um
 XJ+0HPYP6nSkopngeeKUUHaSeHNqUD4n0JQ42me/qDadwWJ29ZIMF7Y05nPpl0QBRqAw
 EJ1CYwJ1bj0QAfRDk6cRraD6k7YnUYdxwjO2kwecL0HSRAx2TzRTpil2DNvC/swOVq/4
 YaKq50Sjn4Kq+BIZrzssPJYFWmgR5fKZwqrOUEmrD2YEqCI3RIdZ83DSeprd3VK7iDE6
 ip5Tu4VUb3OvyGrDIUM5RtgHdYhhVUz9DQ8tXeIARNBVBL9Vl1KbJWOW+40UGm6QCqH/
 6KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2q04YyZCM/Y6pG2YfTJ87FPtLWST+udBScdMOgSCybA=;
 b=U6yuIybxiG80oCc2uwFWTFqWfz48oPxSOWDrF3WuqB6biWbpeJnTSnYF+BkXIN2lz3
 9WKrQbrWUWWj1kc/Et+AI2HWeAWC+xPDY6eXv/XWY60Unid7oDiERL+go4cokA1N5VNC
 n3qj4nMJbh6u+vhhOfgq5UMDdnNYLfmdyGo9+tKd5Gvfp0OdBeY/FQp7MKa2stDQcaeu
 qrWP12tIZC1ph1FGD1nmaIFYiJ+Re6YbA+qMPtXMpgCDyMlrj2ExCIHFP1asDCi/PmpL
 HSXmd7wM34Ix3DxxykmDDZ9qNZoh06+b4usHqxzSMPJcU+oNGU/H8Yu7xwp7YNe9o9ug
 qx2w==
X-Gm-Message-State: APjAAAXEreiCaQ7w0SGocHU4VWEFB3byJXskjEA0O0Q7yIEFnoHQuDyt
 Cf3QgfsnyL4EUUU/bIN3jMZ5GH3ufsMDpjntsJKsZg==
X-Google-Smtp-Source: APXvYqw+kT7L4okfWQnJGTlaxVb3SG2O2Mm0cc0zb+BRP+yT5R0kSZXnWzsi8ELl1o1vA/xXtDWk1ljCWhsCHVJ8+C0=
X-Received: by 2002:adf:8567:: with SMTP id 94mr2627476wrh.65.1571367925553;
 Thu, 17 Oct 2019 20:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-13-hch@lst.de>
In-Reply-To: <20191017173743.5430-13-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:35:14 +0530
Message-ID: <CAAhSdy2mjtH68Ce+h4u3pa79pB-Vs_iu1zfRRcGoaYr=r6xnQw@mail.gmail.com>
Subject: Re: [PATCH 12/15] riscv: clear the instruction cache and all
 registers when booting
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_200527_230625_320E5A1B 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:08 PM Christoph Hellwig <hch@lst.de> wrote:
>
> When we get booted we want a clear slate without any leaks from previous
> supervisors or the firmware.  Flush the instruction cache and then clear
> all registers to known good values.  This is really important for the
> upcoming nommu support that runs on M-mode, but can't really harm when
> running in S-mode either.  Vaguely based on the concepts from opensbi.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/csr.h |  1 +
>  arch/riscv/kernel/head.S     | 88 +++++++++++++++++++++++++++++++++++-
>  2 files changed, 88 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index d0b5113e1a54..ee0101278608 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -83,6 +83,7 @@
>  /* symbolic CSR names: */
>  #define CSR_MHARTID            0xf14
>  #define CSR_MSTATUS            0x300
> +#define CSR_MISA               0x301
>  #define CSR_MIE                        0x304
>  #define CSR_MTVEC              0x305
>  #define CSR_MSCRATCH           0x340
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 583784cb3a32..25867b99cc95 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -11,6 +11,7 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/hwcap.h>
>  #include <asm/image.h>
>
>  __INIT
> @@ -51,12 +52,18 @@ _start_kernel:
>         csrw CSR_XIP, zero
>
>  #ifdef CONFIG_RISCV_M_MODE
> +       /* flush the instruction cache */
> +       fence.i
> +
> +       /* Reset all registers except ra, a0, a1 */
> +       call reset_regs
> +
>         /*
>          * The hartid in a0 is expected later on, and we have no firmware
>          * to hand it to us.
>          */
>         csrr a0, CSR_MHARTID
> -#endif
> +#endif /* CONFIG_RISCV_M_MODE */
>
>         /* Load the global pointer */
>  .option push
> @@ -203,6 +210,85 @@ relocate:
>         j .Lsecondary_park
>  END(_start)
>
> +#ifdef CONFIG_RISCV_M_MODE
> +ENTRY(reset_regs)
> +       li      sp, 0
> +       li      gp, 0
> +       li      tp, 0
> +       li      t0, 0
> +       li      t1, 0
> +       li      t2, 0
> +       li      s0, 0
> +       li      s1, 0
> +       li      a2, 0
> +       li      a3, 0
> +       li      a4, 0
> +       li      a5, 0
> +       li      a6, 0
> +       li      a7, 0
> +       li      s2, 0
> +       li      s3, 0
> +       li      s4, 0
> +       li      s5, 0
> +       li      s6, 0
> +       li      s7, 0
> +       li      s8, 0
> +       li      s9, 0
> +       li      s10, 0
> +       li      s11, 0
> +       li      t3, 0
> +       li      t4, 0
> +       li      t5, 0
> +       li      t6, 0
> +       csrw    sscratch, 0
> +
> +#ifdef CONFIG_FPU
> +       csrr    t0, CSR_MISA
> +       andi    t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
> +       bnez    t0, .Lreset_regs_done
> +
> +       li      t1, SR_FS
> +       csrs    CSR_XSTATUS, t1
> +       fmv.s.x f0, zero
> +       fmv.s.x f1, zero
> +       fmv.s.x f2, zero
> +       fmv.s.x f3, zero
> +       fmv.s.x f4, zero
> +       fmv.s.x f5, zero
> +       fmv.s.x f6, zero
> +       fmv.s.x f7, zero
> +       fmv.s.x f8, zero
> +       fmv.s.x f9, zero
> +       fmv.s.x f10, zero
> +       fmv.s.x f11, zero
> +       fmv.s.x f12, zero
> +       fmv.s.x f13, zero
> +       fmv.s.x f14, zero
> +       fmv.s.x f15, zero
> +       fmv.s.x f16, zero
> +       fmv.s.x f17, zero
> +       fmv.s.x f18, zero
> +       fmv.s.x f19, zero
> +       fmv.s.x f20, zero
> +       fmv.s.x f21, zero
> +       fmv.s.x f22, zero
> +       fmv.s.x f23, zero
> +       fmv.s.x f24, zero
> +       fmv.s.x f25, zero
> +       fmv.s.x f26, zero
> +       fmv.s.x f27, zero
> +       fmv.s.x f28, zero
> +       fmv.s.x f29, zero
> +       fmv.s.x f30, zero
> +       fmv.s.x f31, zero
> +       csrw    fcsr, 0
> +       /* note that the caller must clear SR_FS */
> +#endif /* CONFIG_FPU */
> +.Lreset_regs_done:
> +       ret
> +END(reset_regs)
> +#endif /* CONFIG_RISCV_M_MODE */
> +
>  __PAGE_ALIGNED_BSS
>         /* Empty zero page */
>         .balign PAGE_SIZE
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
