Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BF4875E0
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 11:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApntaZLZjJG2W2yew7F+uXtX1pfZJbQ1ePF8vVbVaHA=; b=saSFKi5GPFbJOi
	fCBocheR40+NExSUU8Q8RS+gYEskVLK4geyxJHMpFJqLLqgElJFSiWLDcY0DWaJ31ZpjgLsGV/ojD
	jbNLKju23+0AnZqC4V0QSV3zXT5+ERZBxvJpLiSF4d1IENvZSSnb9JtVYUPjnLWEKTRABjma/g+g7
	jRmvSw8uM1SGg8/7gAaXWJfgybh115G8MDpOGZ6t9136gN+VRddyeoD/5VpTdpC/FAi5ZrkhyNvEu
	ycIOBgxJ204wx4j+4RBzKPSg3Mse/fUKwuq9vB9wuYYkCyZq8983HrZI+oUqsH48eHFdaVagzV49J
	RD20nxD6tEqL3/BgsDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1At-0000jy-VH; Fri, 09 Aug 2019 09:27:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1Aq-0000jA-JJ
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 09:27:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so97623581wrm.1
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OLdmDC9KjK8wHYH/YMGOndzUePeH788tGhoJ+JIDrPM=;
 b=E/Vu0yrEkOThSq9wuddnkRFUhVX217tVcF3EL/LqSZyuKCRyKIxRjF9CXhrEEAHERj
 Q78KpXScVLFUeq0sJzV1UbMno/4roNOmcTPmtp6LDPxIEZxgoKmDFXbxJsW35JfksSg4
 up7eANYH6DWzkqrrxbbsvvQMy/Pmr+PbSKNtpjS795l/bRS6ltOGZHD40QmAaTSzoX8+
 qZrtihKBmIh/EeryTVirjIksEkj1jr2S4QJbSL+HBW6jt70MrpB1de5QbKFjISaqb2UA
 VuP7HE4kdZjsx0Mjv+N8fjLsV5esiL3mqw89fVOMfZRHQ8T0v9SKQZ4KA/eBMNA/5j1I
 NVaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OLdmDC9KjK8wHYH/YMGOndzUePeH788tGhoJ+JIDrPM=;
 b=p7WiYbfQfOq9uEC63EPOJkx7h8mmdtVuxL6vWSNgN3HPgXxgr0WfX7uwhwJUINdhhK
 RrJc4f7xEP5/IR3STrKcm7Ru7ZZmBU8VXwE65NMhusa6TTcjVgONFvDHhp4trx6Pq1Tb
 pZ5YPY72D6uI3xrPmUcch6nb+hexpz0mlNdSLajlKQYfQpKifYTnhHtGuMqvlW/gex+s
 nMSDy5C0V4GyrMNWPAoJth8UTg5y2wFqhOMutNkIjE2ljYwQmFdKwotk90bXdIhzQuwg
 8jx7m1oFOZCwHQm7DxkSzj3z0Hi1PnbJwOK1ufC+OG8HBU7tG1Van/LHfChX7eNTozUm
 5ZtQ==
X-Gm-Message-State: APjAAAXXcmHXZkcEdiVi/Zh1vPsF8i8q5aRmvfXLOaqj/VVnB1ioSZYv
 dZz739Y88NEUcOV1D+5yOLpltu0Sx1+qo8B/nbfaVw==
X-Google-Smtp-Source: APXvYqxB1pzR3hxupojw9Egj6YewSb1YvyESNLOa/iAcw0xgJGG8uNiUTWLKLCG/1fQBkubFwECh5h4lkT0KrD5JV44=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr21389392wra.328.1565342818831; 
 Fri, 09 Aug 2019 02:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
 <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
 <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
 <alpine.DEB.2.21.9999.1908081824500.21111@viisi.sifive.com>
 <2ea0c656-bd7e-ae79-1f8e-6b60374ccc6e@redhat.com>
 <CAAhSdy1Hn69CxERttqa39wWr1-EYJtUPSG7TZnavZQqnMOHUqA@mail.gmail.com>
 <97987944-b42f-4f51-acfb-f318b41875bc@redhat.com>
In-Reply-To: <97987944-b42f-4f51-acfb-f318b41875bc@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 9 Aug 2019 14:56:47 +0530
Message-ID: <CAAhSdy2-72mJWMyeBrOgp0m=FKRKdDOuj8aoyEwJcTG20tDUtg@mail.gmail.com>
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_022700_770888_802DDC30 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Fri, Aug 9, 2019 at 2:30 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 09/08/19 10:22, Anup Patel wrote:
> >> the L here should be kvm@vger.kernel.org.  arch/riscv/kvm/ files would
> >> still match RISC-V ARCHITECTURE and therefore
> >> linux-riscv@lists.infradead.org would be CCed.
> > In addition to above mentioned lists, we insist of having a separate
> > KVM RISC-V list which can be CCed for non-kernel patches for projects
> > such as QEMU, KVMTOOL, and Libvirt. This KVM RISC-V list can also
> > be used for general queries related to KVM RISCV.
>
> You can use kvm@vger.kernel.org for that, with CCs to the other
> appropriate list (qemu-devel, libvir-list, LKML, linux-riscv, etc.).
> But if you want to have kvm-riscv, go ahead and ask for it.
>
> In any case, you can send v5 with all R-b and Acked-by and a fixed
> MAINTAINERS entry (listing kvm@vger for now), and Paul will apply it.
> For 5.5 you can start sending patches to me, either for direct
> application to the KVM tree or as pull requests.

Sure, I will send v5 early next week.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
