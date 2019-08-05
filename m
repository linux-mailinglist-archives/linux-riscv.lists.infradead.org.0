Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5407A8167B
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 12:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiTjYxYsuh2Z6H8Yzi4Yh+1wUWdTXzbPWxpN0wKRjug=; b=WfRjRFwTd41smp
	AZ/4ziBCmCjnn89NdLjGqGJf61zeP+Pb6Tj15A0oC3mWen4TN9WmKTUSCH9uMlmxopRyE5wpJF3xq
	r4CpwjrvY1SKNVa2U6qCaav0i6d/uLL033EEHKo64CGpU9q0msiY4u8PEfEp2I1MC1CDh4lv+x7f3
	CWw1eBqEBRZLpr3nup6NNPNQJxarguETtt4hifCoww2doLPcTkh+gt+FcmN1FmuXkzzdmQQQrRay+
	J1y+ns8R8yrcElb5tuk6FPD52IFaC7Sy4SOCOG88sICx4Cboi9jUxdIbsIWSLmlu3tByw6hSAOmRW
	FgurbJQbhjsBd8o3TBbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZvE-00006T-3F; Mon, 05 Aug 2019 10:08:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZvA-00005z-FZ
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 10:08:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so74108417wme.4
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 03:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sbNFx4il0vCPP+D1Yz8x0vBctgaZ7/n1Iil30rI0v3c=;
 b=soqdUaOSralN5UpCSAB4aYas5NIxSdLzk1zgv+q/98sdZRE/Uio34RwJkvg1ux7XVs
 5poCzxjYX/nORxXWgj3xE0G83Bz7cFBvE1iIpyBVDkt78RiH8zefcLYFlr0F5jMCd1Ys
 zqaqJQGjdQgEXy5SvmyviyhLNfmFZ5R2Vus7q5cL4v/7rZmpzUkfesNqIBiKd+qA6ASm
 uS8eIqrPz9w1mhrcpTaemqzJWqMdIJQjzP3GuXWRLxnteiDrRBlZKwwPZAquJJGv20z0
 P9m/MxCTFRpkb64kjtVIL9zLa4hPiuJ+vlS9IEovo8tfKl8WuzZtEKHfGmN9d7eBZ9GS
 hh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sbNFx4il0vCPP+D1Yz8x0vBctgaZ7/n1Iil30rI0v3c=;
 b=ZwArIyjlCl1ZyP8/hKB8i9VXWayrWOT84Deapqf9T0LFUmJolC4QhOunQb//WKbeua
 vZ7ivES31Dtp8U82gVsNOKDSL7v69E4wMful8eUlYyekDt208hnH4fmjwn257MdauUJ6
 mvbXG8UHQ5cSimJsu8yrdKhloLhn/do1YIwDDPLB2fMzEuzCKpzMcWnkyyPrxJnRLgj8
 8WbVR3POJRJ7sBioWd81Lp/H20OOHLulu8SGPKo1r9Ij2XEbzVcV+AYtWyPjEZn4QKQu
 YsoORNZUwMUi+fo1w7azXw/3Wi+XDxUbG5/6fZfOagvaoLZPNS7uuDkL1TecCpY9z4Lj
 RNJw==
X-Gm-Message-State: APjAAAWtmrpGpbbJRk1Ay6cw6foGH01uGXGxj3MkYnuxhW68I2IOebMo
 zJIwoqWkJnnANbf5/3pjdCZ/kdW8GL63jDnRe1jfaQ==
X-Google-Smtp-Source: APXvYqzl6kVeF2s9w7in3km5UbjnsJP2KDV81u1ARcFGpnOlD6I6q3QS6xKNc4B1wsWV/lZiflA7ohYpAdCiNvg9Bks=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr16598754wmg.24.1564999730931; 
 Mon, 05 Aug 2019 03:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-13-anup.patel@wdc.com>
 <949b75ef-5ec6-cdfd-5d5d-5695f35bd20c@redhat.com>
In-Reply-To: <949b75ef-5ec6-cdfd-5d5d-5695f35bd20c@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 15:38:39 +0530
Message-ID: <CAAhSdy33_2Qin5+VWp8AhG95DRu7+16fGgVC1Of=QOkNmCJjHg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 12/19] RISC-V: KVM: Implement stage2 page table
 programming
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030852_516766_02F84C67 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Fri, Aug 2, 2019 at 2:44 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 02/08/19 09:48, Anup Patel wrote:
> > +     hgatp |= (k->vmid.vmid << HGATP_VMID_SHIFT) & HGATP_VMID_MASK;
>
> This should use READ_ONCE.

Ahh, missed this one. I will update.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
