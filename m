Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742A6CC77E
	for <lists+linux-riscv@lfdr.de>; Sat,  5 Oct 2019 05:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZiSw+xxEaxV6F//3HFuhO3vHX2EK/o0Pmz8oHPZ+SI=; b=CU88Y/LEIPN0E8
	QBqCRsjrqyQkDMARdQJYPa95+Py3OCdrRJ6FEERm5IqYs6OoIQHjgG2vmlDoacsBh0ZMkfxlEvlze
	S7BkxAjx2YrhIoWznZAHn8gbZh0AblPcGrXPHUck9SwpS1R2Pv8+ya9GXnDVCI/iWDyCB170DQpWV
	V0DWPN2TpGMFHnY2xWoClDauCpGb5409tLlAX2sIc+oI5zEgVNQyruURiB6fY7jBR7UHiGk6i0sd3
	Qxzi3jBvAEqEwmMpDeV/Mb5+TuGJ2n3SfK5BTNlvu2M5DwyiNClabUV/8UP18aoGJTYYnrt+k1uVg
	CFEQKy4N6G8pvuZ60I4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGaWE-0002Vo-Q0; Sat, 05 Oct 2019 03:14:06 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGaWB-0002VT-Fw
 for linux-riscv@lists.infradead.org; Sat, 05 Oct 2019 03:14:05 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x953DTcR010024
 for <linux-riscv@lists.infradead.org>; Sat, 5 Oct 2019 12:13:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x953DTcR010024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570245210;
 bh=irSWPoT/oWBLM2zzUBWK1kr91+umlfLuE+7KXkQtGto=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aSv4GDJ1bi/8PeA8xNTpO2Akp2jk+/N7M42UPW7WiK1jt4hEl5d1jr3alvFw9h3Q+
 lnXDuc/iUeKWNl1eFlEHRw1b049zHw3HnplT306pO7ZzQKERU0Chy3pgoJaExV4Jpv
 YnZsis1jHq2t+48SyFfIlThQLmcLsv34iqL0e1W9HRiMyxf7DSCzLvAESvSqxxw/Ga
 40YHtSQYCRPc/IkOG/Lx2/Hj72VyQTcn0cJEoyJc680HZs7WwdUSV6uJE+l+5IMgfj
 vM4ZFZqi82XiNGAKgk8BdM1aHDk4TpEl4mJcMYfXVN9b5SkZE2f5FuQVq0fQrHZCCq
 wdL8oQB9yVt1Q==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id m21so2621210ual.13
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 20:13:30 -0700 (PDT)
X-Gm-Message-State: APjAAAUt73mnrNEVHg1u55sXjcr61aB3dNiX3vr5I+PqL2EfV6peIpkH
 BWrw3A7vknDemEAWKGQEr31S5M5Jc9OI/F+wU+Y=
X-Google-Smtp-Source: APXvYqx+lvkdS6HNfxywSNsDGQWBuNJowDP39uM/ilT7XUJn2Jt3qfWL4I89dt8KBZRoK+2SKfJwgH8ma8+GoIPN4Fc=
X-Received: by 2002:ab0:6355:: with SMTP id f21mr9727685uap.40.1570245208863; 
 Fri, 04 Oct 2019 20:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1910041037590.15827@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910041037590.15827@viisi.sifive.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 5 Oct 2019 12:12:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNASZG1T4wQFTcaZyHx=hpKNG3d269=7uWBmdvxOt4s02Gw@mail.gmail.com>
Message-ID: <CAK7LNASZG1T4wQFTcaZyHx=hpKNG3d269=7uWBmdvxOt4s02Gw@mail.gmail.com>
Subject: Re: kbuild change breaks HiFive-U boot here
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_201403_742749_AA47A838 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Sat, Oct 5, 2019 at 2:48 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Commit 858805b336be1cabb3d9033adaa3676574d12e37 ("kbuild: add $(BASH) to
> run scripts with bash-extension") breaks my kernel test flow that targets
> the HiFive Unleashed board.  The boot traps during BBL early boot and
> stops.  QEMU is unaffected.  Reverting 858805b336be fixes the issue.

The reason is because
a shell script using bash-extension is run by 'sh' instead of 'bash'.

Run 'git grep CONFIG_SHELL', then can you find a suspicious script?
Is there a warning/error message in the build log?



> I haven't yet had the opportunity to root-cause the issue.  The issue may
> be related to idiosyncracies in my local boot testing process, rather
> than this commit.
>
>
> - Paul



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
