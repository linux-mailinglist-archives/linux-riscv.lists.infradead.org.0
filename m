Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08FDE5840
	for <lists+linux-riscv@lfdr.de>; Sat, 26 Oct 2019 05:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpBr+dbmPJyktGvuC3GwCGt5BTjtqNOCsoL6N8qCiME=; b=kTjCe0G6ma0JLY
	BhXNj4VmSArbc3u/oz5j7w7qs3WkACZ1dVGCoJHXeJ51Gx5y3+JBptdl5etnFWPf7Sgra4AHkobgw
	GcQrcAOfsfiFnT2fdnr5W/497hNwQeunnS8yAJS+IlYqjfgNAjhkGJAV6gjKiKR1rKemxBEhpLuAq
	eyWLnzLGYIC3rcGq3UJ9Wc4EiXNw/Hp7RJ+8mMiu2D4bQYAuB3Vh4IoKNS6eLQOpIsIshs9CPp5wY
	jQXK42zQYN3dyPHDDop8V1bdgUYNuTq3ugcH/pth1NQFvu32DVMaiq0AJWGOiq4a+mr9ZhxVR97ln
	eQk+CUT+5+cn3ncbAP4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOCex-0003Ec-P6; Sat, 26 Oct 2019 03:22:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOCet-0003DQ-Ac
 for linux-riscv@lists.infradead.org; Sat, 26 Oct 2019 03:22:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so4389874wrs.9
 for <linux-riscv@lists.infradead.org>; Fri, 25 Oct 2019 20:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FDkPt2vxGvwt3QPswZka6NmewYvhNdxaRnBgmjWNMNE=;
 b=C9LwTpoMiaGEtarmKKTOEugKrY4v8PqKTr/nwd8Q6hsQ0nXW13bIbP+NnYd8Zvv+Fu
 rZ+9G77bPVots2ydjdBiOh9zuet8WyKKEyOBGhEkknv5Me+seTlOfxgxy0GiRD4vxU3N
 dy9s9GpEj1dYi8+E9wftSWMDmtnsuw0o+zgvOHHvCkWvwK2WZf2E4TBaI8hdZC3H0uUA
 VFikOoun+D4A5NnI/tYjBEBX9r35NzIbkqSON1Sa/RT1x6hQjDlPwHiKOevFW9W9vKmq
 NkPp/8DD38VvRZ9FLUFWSqRpdnKG6jlP8HTBD4GXjW8h9s+MmJZeW42sEoeGFkkUfx/i
 VlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FDkPt2vxGvwt3QPswZka6NmewYvhNdxaRnBgmjWNMNE=;
 b=XPzVNbLwGegEf/MWApzPwsXcKoSXakwjVySvWEG2nxqQT9IfKqqZ9h9tBYbWZSZCoO
 6av6dnfkLmK2YLT1+GqOSKSytP7NS8nr8OPMVVTsFJJAPUjRh6T8lw0A6+s2FeQfpl27
 gHv3dDutSzwMsr5E8Spj8bllKb8RiiskM7j77FWg/7Yq5IkR7S0LDvBMjhUUDCxNHNak
 73dQUlCwld7KN+TN+3SoDMdC5DlGXagh8wJFqqFdnYhBCgQpaq9aYZRdr9UAqrGjlflu
 H+PVcV7MeQtBT+qiEVnoFb/BGjwJFSv5+z/aWHbgbK6Gk7px3b0IeejOeslR7jv+80/X
 VLQQ==
X-Gm-Message-State: APjAAAUeCfY9zyAWTqvU9Lm4ImJ+nvmYYSqzJkeggPnex/CIAGGB4tMy
 PW96GJrEj4xvihaSuYAQy6IWpSIFw/EWLGuqELjFYA==
X-Google-Smtp-Source: APXvYqzGZAwZcrHBPmOgmCPHvyvMfVI74sgWBPVAhX27aA6UWJHfjZjS6tcIVVoOKyt4lXWyW/tRQWr+XDi0GMbCxqI=
X-Received: by 2002:a05:6000:351:: with SMTP id
 e17mr5324719wre.96.1572060147773; 
 Fri, 25 Oct 2019 20:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1910251609500.12828@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910251609500.12828@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 26 Oct 2019 08:52:16 +0530
Message-ID: <CAAhSdy1zfL2kPM-Le6TZSqS2TU1RkgC+zTbB4y31t8TXwVjhEg@mail.gmail.com>
Subject: Re: [PATCH v9 00/22] KVM RISC-V Support
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_202231_428924_C126EA31 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 4:40 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Anup,
>
> On Wed, 16 Oct 2019, Anup Patel wrote:
>
> > This series adds initial KVM RISC-V support. Currently, we are able to boot
> > RISC-V 64bit Linux Guests with multiple VCPUs.
> >
> > Few key aspects of KVM RISC-V added by this series are:
> > 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
> > 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
> > 3. KVM ONE_REG interface for VCPU register access from user-space.
> > 4. PLIC emulation is done in user-space.
> > 5. Timer and IPI emuation is done in-kernel.
> > 6. MMU notifiers supported.
> > 7. FP lazy save/restore supported.
> > 8. SBI v0.1 emulation for KVM Guest available.
> > 9. Forward unhandled SBI calls to KVM userspace.
> > 10. Hugepage support for Guest/VM
>
> Several patches in this series cause 'checkpatch.pl --strict' to flag
> issues.  When you respin this series, could you fix those, please?

I generally run checkpatch.pl every time before sending patches.

I will try checkpatch.pl with --strict parameter as well in v10 series.

Regards,
Anup

>
>
> thanks,
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
