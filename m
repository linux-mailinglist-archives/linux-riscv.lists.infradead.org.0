Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461A585662
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 01:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HB2IWbFlMoGeEqVuzxIt1Sy9kSVkfxFtQMFzqueK3rQ=; b=fq9rFl8A57jXTm
	kwsoihFKyREy3WvkRZH4bt6zRafTQDirJ4j2whyJ4CxKE/FYm2v4X8yFLyWsJ/QPKTzXAuhv04nlA
	ejIsHTzA5a8IO9eZ5JRc65wjSNk391D1S6pUel0c2DbEqbGJqWSt11uvxNXPdvtXo/obFe2E52N+o
	JhWtm02F8ZWCiz1zyceplDxVn3Yx8CPnuJqI8ST9bPxpd87fikCMs4ywvvj2ToRUL2tKi4ETMZPSf
	EV4sDn9rX4RPWWn0gdN1M5OFi1AD+PD75lH1JjQJzRInY6L1nsEAyHY17hoDug5ICRH+GOv7urjOl
	eDVWd7p66uVaBg990YzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVA0-00035B-Kr; Wed, 07 Aug 2019 23:16:00 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvV9x-00034M-Er
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 23:15:58 +0000
Received: by mail-ot1-x341.google.com with SMTP id n5so111215216otk.1
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 16:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=y5EH+uVVZi4pQVkeOf2HQsE+Jig/HWZWR6VmtoAY/1Y=;
 b=FGcfSyAeEFjqXYP2MrFafKVs59mKd5RhDN781c4BKDO2f/tstYFQWAk7ef9lbMC+VX
 n4iCrqINcgklwLrmdjb2Cos54LCdLCcyb7QcM7kuc8FOxBB3fRXTx6Oywwp9h6VWvx1H
 gmRm/yoxs4FAtigFdXUo+yrEGTaUIp6IprhAyYiqEWxZT0n2ymRbF1OSRkd4X0bN1mKN
 Q8lLzK9JQR5AiUsmP3QEDgPcCBrvfMvbWslxDAR9f2LPqkx8z6WvrM0fJwwLD+66SBoo
 r0DkKXC5icFFRcmDxjgHcNqpTjePFGswpj/5G8T1q2ISUiq2aRrWHMGxmYmNFhmRVtu2
 FbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=y5EH+uVVZi4pQVkeOf2HQsE+Jig/HWZWR6VmtoAY/1Y=;
 b=FBQyIHTG/QHf7En8yz18KoUYw0DOZ/jfhf8j+8YKBhauTHZ23f7WZTc4p0Mz7A0Igy
 VxLkjmEyjgn3N8w6ZUzPZazp8K5jeiQMYonEWkRy4XqHBTXplhPRPvBrsv6le/NT26Ib
 eX3n8YMDM+0i2Gt5L1jJBQL0HjC8lWgeQIw2LMi5Gn/ns4LYfZge6Nex7dvRzGgvbaGV
 9FiE19STlt04LI9FPxhNWmW6OCkFko5sexuW6iFBwx6AuiOFXdzhLEb/wFGb0TT9mM83
 vMI6CXZmCFWALG+++jXraHEBTS+2/cdOvdq6IJgFIs7cgMinRPpZonInm8+hOodvnN5R
 46fg==
X-Gm-Message-State: APjAAAXdD1Q43IeTfnEG8Fyl7HZt4cpz94dpGqkQtDFq7FsPX8jPGEPt
 d/rbowtsKNoqnFgGR1OLg/50BA==
X-Google-Smtp-Source: APXvYqybsW+ELbkjOgVjKbuZyZcQ6XTGYZ1w7r83yiScAbSQwX+IQI76DhcZQtcniQZcwYt7DLwiYg==
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr10862099ior.123.1565219754480; 
 Wed, 07 Aug 2019 16:15:54 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 j23sm74215587ioo.6.2019.08.07.16.15.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 16:15:54 -0700 (PDT)
Date: Wed, 7 Aug 2019 16:15:53 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
In-Reply-To: <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
Message-ID: <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_161557_530454_6AC302AA 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Paolo Bonzini wrote:

> On 07/08/19 14:27, Anup Patel wrote:
> > This series adds initial KVM RISC-V support. Currently, we are able to boot
> > RISC-V 64bit Linux Guests with multiple VCPUs.
> 
> Looks good to me!  Still need an Acked-by from arch/riscv folks if I
> have to merge it, otherwise they can take care of the initial merge.

Since almost all of the patches touch arch/riscv files, we'll plan to 
merge them through the RISC-V tree.  Care to ack patch one, and send tags 
for any other patches as you think might be appropriate?

At the moment we're focused on dealing with a TLB flush-related critical 
stability bug in RISC-V kernel land.  Once that gets cleared up, we'll 
start pulling stuff in for the merge window.

Thanks for the speedy review,


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
