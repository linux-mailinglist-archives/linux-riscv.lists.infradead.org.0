Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F310A7961
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 05:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqAcGyK3DFIKigww35o+lcRHu2QnWsrf4Gb7E4b4ftw=; b=kn6OZsHrmrJhuT
	GcQHiIftSv69ONpE8BMXeR2p7J5KKfsgt8+iSzhte8+zS82O9xd2vQZIVO+WQolm6TvOcb+kfBQjW
	MyhgsL7C5qOEYKOcjr9O7Wy1utlRisUCNHXbEQVROvbI1Z/zze1CeLhlTfuWx9NWUn/+AB9L6n1Qf
	2MFN3dZW+z2SnmY3zHybwRDznKKVqQMFcMuEEi6b/c+0wIO/+kzCY4fnfvv6BV4Qkvte6AXiwmIMQ
	1TTC+uxmD4t9i+KAJQfYvdUN0cHLI+QSWzCA94Bz/Z2/qvxKs7ZHnoVpCNKpgjVoRyIJ1KD4P8svS
	bOJROgmWLW0aSCP8cKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5M98-0008RH-Ph; Wed, 04 Sep 2019 03:39:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5M94-0008QM-QC
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 03:39:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id r17so1457426wme.0
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 20:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uUvXGKEZoPRwA5Ik3P0dfSDGF8yBJbth8FfpGl8EDP0=;
 b=ngpixdURTCml3W6w0yzV+Rhsvzl0vFP543h/AkMi8pPMOLdXtCsQTfEwUiVSRqLpRg
 ViZIIhvOQe63f80RVhqDlhTCOS3wgE0Oj72X6WYKRSGftAJId8eGdpC6JBAKqm6ZLzCD
 Jj5SSs253BgqPYfMkuxmf1VjvQ2rd9U/vSDHlydFTB6yuR2I594+Eo4/i0zzBp2UoCZZ
 rbcwTM5L1QGThHgSeH9qkLb0dZEWpTP44GQoSJqC12163YLExtnNU8N2Sc5q705qDtDg
 UyanhjDBc42fGoI41lIhgF5jl+jyx3jVe45w6t/zzRw0dH4XAHsJaQVvqtp7d3gw59zs
 DQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uUvXGKEZoPRwA5Ik3P0dfSDGF8yBJbth8FfpGl8EDP0=;
 b=H9fFnP0p5W5JQZq1VbUGB60X0r9GwzwGUKJXK4CpHwXJzlprKQxXQyrybCueP56JEE
 fVU2/VawYwmY66sBj4pPjO3FA4qyeC5mV7p9czx3UP4oLmmGL3cX+0pgWSePU6YDIGg8
 GZsCc44BMy6l0ZZ5sehqEtEedNPt+GdnMV823FsFarocRLx+zogB10FrYe3Jp3X1+Q9s
 /G3puLD+JC16UiyO+8gh/zQnU+XG7eg5/Hw+nVBm+gHJVEUdNmp8YHATb7PYwuSGKx1O
 TuvjSK6bSKuCHkkKgRvv7qGQddvgtpYJVmMnxgsgkB6ENZ0ajPZVe6c5RcnODhESIrGI
 7sOg==
X-Gm-Message-State: APjAAAXJNhtET5wMaGWfhCDy8SgMtIKCovddXxKmrT3TpD2p7/FYLEkC
 Md3YnpF2qoPxLSEA/irv7bTJYfX2VKQbBJTp16YXSQ==
X-Google-Smtp-Source: APXvYqz0n5ioObrdz8U18x0DJ5xS+gtleSKoC8A+H7ZQqzLl9D+NvFGtDBCQUuUQr+XBDPAJjSBLpSXEFqdf7CWjOEA=
X-Received: by 2002:a1c:a697:: with SMTP id p145mr2227587wme.24.1567568384117; 
 Tue, 03 Sep 2019 20:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190829135427.47808-1-anup.patel@wdc.com>
 <20190829135427.47808-22-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-22-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2019 09:09:32 +0530
Message-ID: <CAAhSdy3bywQhOdt4ymNwHh=VAH8D0-qK_PRy+J0s1rTe=+d=mg@mail.gmail.com>
Subject: Re: [PATCH v6 21/21] RISC-V: KVM: Add MAINTAINERS entry
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_203946_848916_5C992F67 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 7:27 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> Add myself as maintainer for KVM RISC-V as Atish as designated reviewer.
>
> For time being, we use my GitHub repo as KVM RISC-V gitrepo. We will
> update this once we have common KVM RISC-V gitrepo under kernel.org.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>
> ---
>  MAINTAINERS | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9cbcf167bdd0..b4952516fc32 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8869,6 +8869,16 @@ F:       arch/powerpc/include/asm/kvm*
>  F:     arch/powerpc/kvm/
>  F:     arch/powerpc/kernel/kvm*
>
> +KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
> +M:     Anup Patel <anup.patel@wdc.com>
> +R:     Atish Patra <atish.patra@wdc.com>
> +L:     kvm@vger.kernel.org
> +T:     git git://github.com/avpatel/linux.git

We have created a shared tree (between Me and Atish) at:
git://github.com/kvm-riscv/linux.git

I will use this new repo as KVM RISC-V tree in v7 patches.

Regards,
Anup

> +S:     Maintained
> +F:     arch/riscv/include/uapi/asm/kvm*
> +F:     arch/riscv/include/asm/kvm*
> +F:     arch/riscv/kvm/
> +
>  KERNEL VIRTUAL MACHINE for s390 (KVM/s390)
>  M:     Christian Borntraeger <borntraeger@de.ibm.com>
>  M:     Janosch Frank <frankja@linux.ibm.com>
> --
> 2.17.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
