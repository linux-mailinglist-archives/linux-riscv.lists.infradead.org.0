Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59FD874BB
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 11:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qClm7efwuHc7glupjWt7m5sPfAk4ZNBFTr4EdSsUq6A=; b=JsB92+38ehgfxm
	uxv2NamOPlu8jMLj1wip2V2sPPb7twFT+EH3CLiKY/itaaH7ufE4wPFSkinaZMFbC+kUyn1d0aM5C
	zJIouBoLCnPnODQ61qz6hJabWekL7vn4rPVLbQRRNGiRWlcU2DtMOljn9B43H/G6wSJONZJQz8OYY
	c61hQBVfRT9IPiGx1CCQmdEbZ8ca2WBZncKRCGF7hTmrQYmZO9at87r+Kprdj3+V5F+ETFLSsURbU
	ZNIBAgxn5oRLk5yVPvY+5u2BDowGxNO/5sl7fsRnRXM1d41ApVOoNsq39tzufwzAl1NW1QCIDkzmZ
	eqGlv3AkdR5tzF1+ZR/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0lm-0008J1-DJ; Fri, 09 Aug 2019 09:01:06 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0lh-0008I3-6q
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 09:01:03 +0000
Received: by mail-wm1-f65.google.com with SMTP id 207so4935073wma.1
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 02:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wi2BHvM1fl4ETS2j2+rpRDcLcQQawHudgg0yb+P5OTU=;
 b=metem1uHfIONSvYtzXuP4qXnzbEaVkTNkmVV7DaEn5kEzl97RAuEsFvAlkDBuVXo7z
 +oRvIAqNATc0qOU60et85gMyrqYhWI5zTGaKBCOgmqfx66/6fEDVy03lcOI4A/Z9f0rZ
 glF+jsgLXe2bQ9M1gXI+Xolg54vH70sNpSu4CpCDXV9tUBKTbX+RSwxgCaxByV+p0ajg
 hxYOMNHLdPXMR0Vi5KOzMqvUX8zSvvLdcJnasehnDLOrMVPGoSsG0+v4m2PERtug9LyT
 +vARPhgLnJ86/hJPsX2QENtab0J4l35icI82cxjI0r7x/ZzggWkgR49s9eIhLcS/Ity0
 5B8A==
X-Gm-Message-State: APjAAAUJ0I0aXBOsEl+FyuaSQgZ8wmoAzoqCsrFU+Tc/puPyzo7m0w+t
 28IgTxPCFFC6lVy5ShD37tGISlJad6w=
X-Google-Smtp-Source: APXvYqyNMFM488WmLYeAfYIO7lJmFRdi3Vo5BGW5Y1C/q8YX6x7ObiHJh0qxETNqgckUmR7/YulERA==
X-Received: by 2002:a7b:cb8a:: with SMTP id m10mr9779246wmi.154.1565341259261; 
 Fri, 09 Aug 2019 02:00:59 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id a84sm6937335wmf.29.2019.08.09.02.00.58
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 02:00:58 -0700 (PDT)
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
To: Anup Patel <anup@brainfault.org>
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
 <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
 <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
 <alpine.DEB.2.21.9999.1908081824500.21111@viisi.sifive.com>
 <2ea0c656-bd7e-ae79-1f8e-6b60374ccc6e@redhat.com>
 <CAAhSdy1Hn69CxERttqa39wWr1-EYJtUPSG7TZnavZQqnMOHUqA@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <97987944-b42f-4f51-acfb-f318b41875bc@redhat.com>
Date: Fri, 9 Aug 2019 11:00:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy1Hn69CxERttqa39wWr1-EYJtUPSG7TZnavZQqnMOHUqA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_020101_243766_F84D2BA2 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 09/08/19 10:22, Anup Patel wrote:
>> the L here should be kvm@vger.kernel.org.  arch/riscv/kvm/ files would
>> still match RISC-V ARCHITECTURE and therefore
>> linux-riscv@lists.infradead.org would be CCed.
> In addition to above mentioned lists, we insist of having a separate
> KVM RISC-V list which can be CCed for non-kernel patches for projects
> such as QEMU, KVMTOOL, and Libvirt. This KVM RISC-V list can also
> be used for general queries related to KVM RISCV.

You can use kvm@vger.kernel.org for that, with CCs to the other
appropriate list (qemu-devel, libvir-list, LKML, linux-riscv, etc.).
But if you want to have kvm-riscv, go ahead and ask for it.

In any case, you can send v5 with all R-b and Acked-by and a fixed
MAINTAINERS entry (listing kvm@vger for now), and Paul will apply it.
For 5.5 you can start sending patches to me, either for direct
application to the KVM tree or as pull requests.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
