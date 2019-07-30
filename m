Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25A7A7E6
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY8Vj4pPpnNKZarnfIX3yBlzIm/CmXAFZHeunV31K8k=; b=F2v3uaq6tBfb3X
	zCoHwhgsdWwEm3hWnFOhcqP/v9X4fOj5kkJ+cKWsSpaGUjT1941JpqOxm1cwndSuPr1P+4B4af7AJ
	g+SEyQLuYuvVQhQEZpbxUmP9KIMn7rsMt3TP8vk2bwMGgOOXFwMA/RwsJUDO8LMixHhfWjGMTrswH
	K5HZq6N3cMAnPFEzryy3Tn7YA8/TWMqfN38/+PuiLcxOzu+ngwSQWRUSqbKfHnzXf61KK2Hd6frE4
	51UagdZz5V+3lgPZ4NKfbIy4T2VYKahcsa1vEpfpw0Fga7k8n75bV1Ihf+5bm1ehSaSXJhNtkMoZs
	V2l5O5/2qhZM5yiscdQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsR1K-0004YY-TF; Tue, 30 Jul 2019 12:14:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsR1H-0004Xi-4f
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:14:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so45183195wme.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nif3qHLVmcvrPjGpxqbZt9/vydbdek0IMR2qJ1UdOfY=;
 b=rYNoj1tSzf0sttrAZdSs0XsVpgLJYwh2JBmIkgCKdff9t45iEMVp+2cHfJrM/VHequ
 RbRBhTt/0cXeZKmlYao/z751WpX18xessLddOkzDYTEFnAWXW6Yxse55jAyRcZnxY/tt
 rJ5tpyDfKCTA8aqaFnZfcwrpxIrSm+Ws2Mu80jZqcAg2UyfC++kD+iiZAtQYDHUbB3uQ
 Gxn2RTDO3tb9g6OZrrmou3hHxY7gQYhQgSlZViGnC0PN2i7eyno/QKb0uL0z0R5MwRAy
 2bfe9WjPvpOblgbSgsYrp++rsj4vBiJAyu8Xblwumon2NV+xuhsRExoLICKISZhnynUl
 uy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nif3qHLVmcvrPjGpxqbZt9/vydbdek0IMR2qJ1UdOfY=;
 b=BZVHMG/QUhu7km2OmV1f8lZxGjxI+9y9Wv3DaH1AYdn/cM+bWCerITrc4nHo5gnFeL
 EJ3xh8uhG5ezdA/tYZLWbu78JBB9IZb7Ph9fz9ooSGHxf1o5rVqhKbkAJpdQx7maTilk
 6ylJhF2q+e1PaFTUsvgwlPPwkA9W3k3lAdRyLcmuODuR9aboOb8p7YLQRn5VKheMCJ3q
 h2Ke/FijR0de0Sv6ormBiPOCsWzARuPiN45HEeoTUYEPZOifFsag71yaq4Cv1D9JeRYc
 m/yPiZQyrVMOduhzBmNUPNXD9VKNAi7XatDzjZ0/zvzSz9Zeecxi9v+vxgilWuM+sKau
 LmIQ==
X-Gm-Message-State: APjAAAXo0SZlN/QH9eXdWV9iF6/YKHy+wCcol5OFF5MI/44rlXMCbQM6
 xV0D7VH0CquBDQDCC7AtNWhKn8/p28S6UNL55Rg=
X-Google-Smtp-Source: APXvYqxBKE8FkPVrEqaGT/BokRytjmgYIEjMXXYbPz3pe96ONQT3DpM8Y+BsFeCrC+LD4o8MLveCcLyT0fkIChqWiqA=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr97987106wma.171.1564488855824; 
 Tue, 30 Jul 2019 05:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-12-anup.patel@wdc.com>
 <6ebde80e-e8a9-6b7b-52ea-656b9a9e5e5b@redhat.com>
In-Reply-To: <6ebde80e-e8a9-6b7b-52ea-656b9a9e5e5b@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 17:44:03 +0530
Message-ID: <CAAhSdy09Uhkg=-m213SeR92M1PRx1ZtE-fTLT=nNvg_0HY2YnA@mail.gmail.com>
Subject: Re: [RFC PATCH 11/16] RISC-V: KVM: Implement stage2 page table
 programming
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_051419_184243_5C272BBA 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:30 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 29/07/19 13:57, Anup Patel wrote:
> > This patch implements all required functions for programming
> > the stage2 page table for each Guest/VM.
> >
> > At high-level, the flow of stage2 related functions is similar
> > from KVM ARM/ARM64 implementation but the stage2 page table
> > format is quite different for KVM RISC-V.
>
> FWIW I very much prefer KVM x86's recursive implementation of the MMU to
> the hardcoding of pgd/pmd/pte.  I am not asking you to rewrite it, but
> I'll mention it because I noticed that you do not support 48-bit guest
> physical addresses.

Yes, I also prefer recursive page table programming. In fact, the first
hypervisor we ported for RISC-V was Xvisor and over there have
recursive page table programming for both stage1 and stage2.

BTW, 48bit VA and guest physical address is already defined in
latest RISC-V spec. It's just that there is not HW (or QEMU) implementation
as of now for 4-level page table.

I will certainly add this to our TODO list.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
