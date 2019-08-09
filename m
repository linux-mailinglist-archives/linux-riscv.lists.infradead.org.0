Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E18873ED
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 10:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZJEG0zWAJ4eSmclg86TO17d3Zq2ydEz8bLyYTqh9HY=; b=P0GFewBjFruFRE
	rs9IZIN2GFVmKmkVoJ1jxKyAw9MGvJPQ1q9IEFqZV9HDMHQDzR8BhiKoigUiAdWoWSfgNOZKBAXD0
	HVKL9mz8BFJDAFZkEBwQp7fq02hQOj5/v7hPgOOEnvPWuq7l8YvaEdkfux5OKGn7SnwqywRJcOH3i
	dUgcH7K0Z5pShpiaWUJOhnpPye3USe4r7UTYOCoD5awcrpK2MKy80fOvBuzdEE0j653p6jWZyl31e
	BEFPzJ0/NKRbiUEkdkIQUJm5eWp/ePo0kPtIRsaYUgheAuHjbpWsNm8c5WNIzRgbyU/yTaGIZ+11c
	awJ4ofTpp/QZvWejgUFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0Aq-0000xO-6O; Fri, 09 Aug 2019 08:22:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0Al-0000wI-Tm
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 08:22:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id u25so4797494wmc.4
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 01:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LNp+g/vzuyou+8SOuxEdKIcRZJyNxl5KwEsu62IXuGU=;
 b=McbvzcBJfP+h0NnjsTTuaoLwxpZGA7dGjabt7my3rltA7R0trFNTKNQComMgOJzJOx
 slP5Yw4Qdp30DslmvJ4o8MfRdsPKZu9phvRP7U/sYWn9kGp6VKO/MIF8JuIFkVXaa4rf
 T33OYcFUVPzUdwE8Zg0xFX6KV8MbR6VpklDwVUby0z6XD3f7N7n6DVqUGjbltAFwRRus
 +kP+FHDnZZ8F2EXny8Pc4toQheMVEfLe1PPkHfByRfJfjJGPfbkT+w9+Mvy2xaagI0zd
 BFfUkF54ag0sA9pHCm8TDOElD7Y8Luo/9q54gkNIswD/IIk1OXcEqp6R6LGmuh7N9NiU
 AMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LNp+g/vzuyou+8SOuxEdKIcRZJyNxl5KwEsu62IXuGU=;
 b=nq+ycRnEzq2fSXUzYz3hmLhIaIRF0hnNEw4//lT3tKUt7Ed3DvdkaiEa88ozfqK2V6
 l6EmvQCHZStocB22hXdHG/XMEXSQ8KoQvrBU6NSqMRVPlY7+04IB0pnCPbra2leVYY2P
 oSfevzmOuueqE3eIqRJOBkU+wu0Jnrlz7m5iUQSgss2z/BMRrqdn/V1yDrXkDTAKQVw7
 eij0BiPtFLewajuCLJSw0TIp4C78/uFI515S6Q550O5eBbH1z2kHwRx6voGEa2kXIQuf
 peEzVeX0SP63LW70AknrS1G5Ih5PFFoKIQO0PDDbx8B9oBENX3pOFQBLr8nGax05sVWJ
 o6AQ==
X-Gm-Message-State: APjAAAXqGBWhH5G7d7yHjR3TmbCrVUF/VNYh7BNU18fN9mBK6UtQ0tyt
 soYbu5GlK0Njd/zb1oHkG/ym9mHJxftjy6gC0rdyEw==
X-Google-Smtp-Source: APXvYqwp3nuRKA8dCG1GKtRTblI3EushHwDGCgL1HJWLLG1enXfHuScwMYxlxKAy5IYXAC+HAEaXftvzSe9EONOIJ/E=
X-Received: by 2002:a1c:be05:: with SMTP id o5mr9482966wmf.52.1565338968612;
 Fri, 09 Aug 2019 01:22:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
 <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
 <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
 <alpine.DEB.2.21.9999.1908081824500.21111@viisi.sifive.com>
 <2ea0c656-bd7e-ae79-1f8e-6b60374ccc6e@redhat.com>
In-Reply-To: <2ea0c656-bd7e-ae79-1f8e-6b60374ccc6e@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 9 Aug 2019 13:52:36 +0530
Message-ID: <CAAhSdy1Hn69CxERttqa39wWr1-EYJtUPSG7TZnavZQqnMOHUqA@mail.gmail.com>
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_012252_105650_0693AA96 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Fri, Aug 9, 2019 at 1:07 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 09/08/19 03:35, Paul Walmsley wrote:
> > On Thu, 8 Aug 2019, Paolo Bonzini wrote:
> >
> >> However, for Linux releases after 5.4 I would rather get pull requests
> >> for arch/riscv/kvm from Anup and Atish without involving the RISC-V
> >> tree.  Of course, they or I will ask for your ack, or for a topic
> >> branch, on the occasion that something touches files outside their
> >> maintainership area.  This is how things are already being handled for
> >> ARM, POWER and s390 and it allows me to handle conflicts in common KVM
> >> files before they reach Linus; these are more common than conflicts in
> >> arch files. If you have further questions on git and maintenance
> >> workflows, just ask!
> >
> > In principle, that's fine with me, as long as the arch/riscv maintainers
> > and mailing lists are kept in the loop.  We already do something similar
> > to this for the RISC-V BPF JIT.  However, I'd like this to be explicitly
> > documented in the MAINTAINERS file, as it is for BPF.  It looks like it
> > isn't for ARM, POWER, or S390, either looking at MAINTAINERS or
> > spot-checking scripts/get_maintainer.pl:
> >
> > $ scripts/get_maintainer.pl -f arch/s390/kvm/interrupt.c
> > Christian Borntraeger <borntraeger@de.ibm.com> (supporter:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
> > Janosch Frank <frankja@linux.ibm.com> (supporter:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
> > David Hildenbrand <david@redhat.com> (reviewer:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
> > Cornelia Huck <cohuck@redhat.com> (reviewer:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
> > Heiko Carstens <heiko.carstens@de.ibm.com> (supporter:S390)
> > Vasily Gorbik <gor@linux.ibm.com> (supporter:S390)
> > linux-s390@vger.kernel.org (open list:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
> > linux-kernel@vger.kernel.org (open list)
> > $
> >
> > Would you be willing to send a MAINTAINERS patch to formalize this
> > practice?
>
> Ah, I see, in the MAINTAINERS entry
>
> KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
> M:      Anup Patel <anup.patel@wdc.com>
> R:      Atish Patra <atish.patra@wdc.com>
> L:      linux-riscv@lists.infradead.org
> T:      git git://github.com/avpatel/linux.git
> S:      Maintained
> F:      arch/riscv/include/uapi/asm/kvm*
> F:      arch/riscv/include/asm/kvm*
> F:      arch/riscv/kvm/
>
> the L here should be kvm@vger.kernel.org.  arch/riscv/kvm/ files would
> still match RISC-V ARCHITECTURE and therefore
> linux-riscv@lists.infradead.org would be CCed.

In addition to above mentioned lists, we insist of having a separate
KVM RISC-V list which can be CCed for non-kernel patches for projects
such as QEMU, KVMTOOL, and Libvirt. This KVM RISC-V list can also
be used for general queries related to KVM RISCV.

>
> Unlike other subsystems, for KVM I ask the submaintainers to include the
> patches in their pull requests, which is why you saw no kvm@vger entry
> for KVM/s390.  However, it's probably a good idea to add it and do the
> same for RISC-V.

For KVM RISC-V, we will always CC both kvm@vger.kernel.org and
linux-riscv@lists.infradead.org.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
