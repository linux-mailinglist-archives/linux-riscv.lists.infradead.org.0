Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BFD7A73B
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFQpg9fvn6VBK1LVh22gJa9F6qWMbDjHLr90zKfkJfQ=; b=YwzIgRnCOQN9Tt
	/t0GKjUSpgSVcp3p0BwPPiTvs6AMw/VvSIrz4vdPMKmR7yLYEYq3PjuVPj1w3ItwMy10OYRKwxOJe
	x4VIkNrs2HN87us85gZsHGra/yp48lzpGpsSkZcBTtEAxF8p0uhCd+PKxpoD4BjrcSVlPMackJBTT
	kVVxlwK8xMnexUCZpnQoV8hIOvJCUJK5n5jSw4XVCmYEaOWW04KbzyKSQ3o9EJ1/OxyiMzFiOeoSj
	4W/rkefihm/G1VPM03e4Aql1CYKRj3pqni4l7lIeBFhHaiD51piJuo1qPTj0Mtj8icUIVsJ6oHSIQ
	c/NRYvKD7zlMywj7DE8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQaN-0001U0-60; Tue, 30 Jul 2019 11:46:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQZy-0001GM-Tp
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:46:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so65449583wrm.1
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DSo219uBBQuUIUjoxpKujZtQ/5w8YP4pzpQJT3D8aBA=;
 b=gbw6CwkeXhENGj0Eco2ek5ibwxV16dRDV7am21QurDDO6eOhOkVzbupEo0vU5bjnX8
 wooptB/qSlORBPn6AJO9d6w6OTdp8aKbkrTjrp8IMloxRKPXN2yYh47vKeAN/CFaSZYc
 Wv4D9akzJgzNvlbW6kCYgSG5YfrJLKMHeK5qJ5Os6kkfd8HRUesS8DW3VJif/ZhFLgVa
 ISCTcC/JSf8tTK7eXzEfjoBsWfG2JmxjnSA0s37YubJ9mISX5km8dbVKEIjFQRlWhxxD
 c/GVRcN0F/txPzvFKgC/LRk0YOagBkFUvHIj1KabmrGucdZCwu0ckNAkGrLyj6NzYnMs
 9YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DSo219uBBQuUIUjoxpKujZtQ/5w8YP4pzpQJT3D8aBA=;
 b=bSg5mACkvyw0Ijl70tYkGKLS8bFRNfhttBM9mD5ycaQzjkYfnXVop2uDulBa+JPL+L
 foHFGJvoWYtjUHy8FA1JTwV9EqKLHNg9Itp4AX6V52GTW3adxqHtTYmAIisiGR7W/DWJ
 tirozl0PnAXfHkCyQUWUdO4Wo1PPWpyq5hVAgrPiXVumMivAzqp+GRBLR1VjVIM6cL31
 YSDreU8lbsiC8UupOhLI5REEyBiUfsvbtfPWHqAZ2ia7vUFb52IUxaBvqu+I1Ouyh2po
 Xezr6e1F9rJmrVF5+tQYWaD4Z0FYer7bWpaqatxjdwCjZdbnbQ+Nh0/yL4XMMcBYnFQF
 h1rw==
X-Gm-Message-State: APjAAAWMpjlGGJR/Rl241CoCW6N/W2QI8bf89VoIGxbdW+Cum7joA5Sk
 f7vywtZ6QuFMU8bin36g9qR4wB5KFMdgVNdqNuc=
X-Google-Smtp-Source: APXvYqxcNGyAMDSQUqXUF4ibEZV0Hg0QLhoWESRbxN2cYy12N9UTrjz1RoeAXOIYGCVQ4YlqG0W4pvPRidpxQg32B0Y=
X-Received: by 2002:a5d:6284:: with SMTP id k4mr94957352wru.179.1564487165402; 
 Tue, 30 Jul 2019 04:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-5-anup.patel@wdc.com>
 <ade614ae-fcfe-35f2-0519-1df71d035bcd@redhat.com>
 <2de10efc-56f8-ff47-ed69-7e471a099c80@redhat.com>
In-Reply-To: <2de10efc-56f8-ff47-ed69-7e471a099c80@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 17:15:53 +0530
Message-ID: <CAAhSdy0OH9h-R=2NxhhPs6jmFPNgZVSwFtCjtJrf++htu82ifA@mail.gmail.com>
Subject: Re: [RFC PATCH 04/16] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_044606_978543_5DBBCE2C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Tue, Jul 30, 2019 at 3:46 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 30/07/19 10:48, Paolo Bonzini wrote:
> > On 29/07/19 13:56, Anup Patel wrote:
> >> +    cntx->hstatus |= HSTATUS_SP2V;
> >> +    cntx->hstatus |= HSTATUS_SP2P;
> > IIUC, cntx->hstatus's SP2P bit contains the guest's sstatus.SPP bit?
>
> Nevermind, that was also a bit confused.  The guest's sstatus.SPP is in
> vsstatus.  The pseudocode for V-mode switch is
>
> SRET:
>   V = hstatus.SPV (1)
>   MODE = sstatus.SPP
>   hstatus.SPV = hstatus.SP2V
>   sstatus.SPP = hstatus.SP2P
>   hstatus.SP2V = 0
>   hstatus.SP2P = 0
>   ...
>
> trap:
>   hstatus.SP2V = hstatus.SPV
>   hstatus.SP2P = sstatus.SPP
>   hstatus.SPV = V (1)
>   sstatus.SPP = MODE
>   V = 0
>   MODE = 1
>

Yes, this kind of pseudo-code are not explicitly specified in the
RISC-V spec. The RISC-V formal model is supposed to cover
this kind of detailed HW state transition.

> so:
>
> 1) indeed we need SP2V=SPV=1 when entering guest mode
>
> 2) sstatus.SPP contains the guest mode
>
> 3) SP2P doesn't really matter for KVM since it never goes to VS-mode
> from an interrupt handler, so if my reasoning is correct I'd leave it
> clear, but I guess it's up to you whether to set it or not.

Yes, SP2P does not matter but we set it to 1 here so that from Guest
perspective it seems we were in S-mode previously.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
