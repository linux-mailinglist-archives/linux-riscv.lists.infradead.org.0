Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B6B812F1
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 09:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZYxuPlkJGSf20G8fPuvue6lGRnYBfAKwSgau2E293c=; b=b4TlFDUzlJA0oK
	2Qf2FmRWzD+I5u1JzrssHxhla7jnLlL+Dk5tQO4FgURUoQg3KqGneJ/lbAZTorP8oj6q2YyQ6jhO5
	qTj0eyPB73i5Rrt8q1n28770teyS0W25eqjh+IzUnYjZ+fBnZyPdibJizCjnxTEg8qVmPPeFpJVBk
	vFi45OFOko4RHWTGyDXfKEDln37KTBsZEJ9jEoQVPQ0TEIf6QRA3nEcoqATkDYs/PWcWo0ptHckwm
	5OcPP7mLVK0OEzjKm+1MPtX84KUqiTWYHfrPyqbCv+gREUSPJUu27t7lAdQ10HqihtACFzTU7a05/
	n6ZhsKxlWsVU3S9x5uag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXGH-0004et-DO; Mon, 05 Aug 2019 07:18:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXGE-0004eK-Ac
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 07:18:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so83374833wru.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 00:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RUqYiFGRwqZz3baSi7DePLwfU/zHvDjxvxTGgWRnjy4=;
 b=vaSHkIAHMZgvdsmo51ZYrbAryRPsAqLUFYv5jJavndTgROhdJ2YKtLsZZ7C5gyHtvW
 d/v3QIkwaKBrAFuclzEsoay1vDYmjzsPaxL6kALb0MhKAhO2G5JvtGBdNRuHDOhawgi4
 lXTjtmEwRoGoiHPDd7rP98028ijkU/rrmccPlI4+BJUogzjLpnIAfcM/RSF7a0W20G3a
 +lYNkmcxP15Wv0MSZzqX1VmMeIw8oeevNB0gHTpWSvBKIISi5EBHG0ojEi+JIBbaGMD3
 Jrc2jqiRbvWDhyZXhGGFBf5N5Ec8u2CeeK2HmFW6XmZ5yQoLYLGMohbmcA8s+tpwyTkC
 naNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RUqYiFGRwqZz3baSi7DePLwfU/zHvDjxvxTGgWRnjy4=;
 b=LGVQkrIvM1HIQewm1Vc1+VZuWQeozz9rfqId5oSD+/Pqg7DCdMauC2+4w4YdfvSwgJ
 sHznriG+5C4uah+oLBQ/HLrRFl1Drt1n2IetrSuTOhrjLQx2JTyunEzo6SkG/+Z6nObl
 oP3Kiq8YR5JuLNY0CCS2dVVuRjzd2p+titGhck7sn413PACuaO11diiBZVFIlV/f8EY4
 m9OMOJPpHncOAdW3ida7vrnyedHXkCt09vHqTDe2i03erUUJPQKyDro59jTSXP3xadq1
 knZZQzoEvls6yS4ViIxa9Wk9kjDbuPTNefuG6IlE+dPIravUjzBDrRrAqMS8ON+EObgg
 ppmw==
X-Gm-Message-State: APjAAAW7r7Gn+J3BC6eXzhxUg9ekS1OgmtADIAqiKD9fcQLildiJ/nST
 vVRMPSWr4GFPbi7oabIFWtJ9Y4SDQ3COGqZ2NeY=
X-Google-Smtp-Source: APXvYqw/FM+tBx9ajgV2UsWP4KPKi99Z0fzot3UMGZ6r5xVj6SOPqPddG0DiyAWPBjneacTNTdnwazaj1Hb9o9cCPqQ=
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr24977381wrt.227.1564989504211; 
 Mon, 05 Aug 2019 00:18:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-11-anup.patel@wdc.com>
 <5b966171-4d11-237d-5a43-dc881efb7d0a@redhat.com>
 <CAAhSdy0BVqagYTTnaG2hwsxxM51ZZ2QpJbZtQ21v__8UaXCOWA@mail.gmail.com>
 <458f6b85-cdb2-5e6b-6730-4875f0e4cdba@redhat.com>
In-Reply-To: <458f6b85-cdb2-5e6b-6730-4875f0e4cdba@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 12:48:12 +0530
Message-ID: <CAAhSdy02bZAbyK4TGzO0jYRCTCFwexzA_iu7GNRh-07NZ6fuFw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 10/19] RISC-V: KVM: Handle WFI exits for VCPU
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001826_369157_DCE329B3 
X-CRM114-Status: GOOD (  10.05  )
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

On Mon, Aug 5, 2019 at 12:44 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 05/08/19 09:12, Anup Patel wrote:
> > On Fri, Aug 2, 2019 at 2:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >>
> >> On 02/08/19 09:47, Anup Patel wrote:
> >>> +             if (!kvm_riscv_vcpu_has_interrupt(vcpu)) {
> >>
> >> This can be kvm_arch_vcpu_runnable instead, since kvm_vcpu_block will
> >> check it anyway before sleeping.
> >
> > I think we can skip this check here because kvm_vcpu_block() is
> > checking it anyway. Agree ??
>
> Yes, but it's quite a bit faster to do this outside the call.  There's a
> bunch of setup before kvm_vcpu_block reaches that point, and it includes
> mfences too once you add srcu_read_unlock/lock here.

No problem, I will use kvm_arch_vcpu_runnable() here.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
