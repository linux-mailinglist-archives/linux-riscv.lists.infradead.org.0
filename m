Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9991F11201
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 06:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cg8BrEKZET6+jUIC4ra/Vww+HMi+O3U5TeIZhD3WbB8=; b=Hm/yfhuIobvY92
	rq/Pu4/N447eL5TOOnmbW3xfgF3CHoT70CaQwtf1kIC7gOF0mEdLE3ujY3ol7/G03ZBFrc/zMhdu+
	gnn91NYejX3z+EDOklnSHpl5R+1yfhPvElMM3JVnoQo6YYr+lg5O/bPyvvtmuy9XNoj16GP9TWwuM
	mpEzCatS36RLZ4gPFKLolKEcpcDDxgQzOCmvxicqMvw5fSpACzfbByuh/Pyco1J64y1sjJ7R6jpfK
	jBu84Zd2o3AeQgQtJTQgT/n+xCcEhBpy3LN6IAgcxh7xwRW+FHaf+JNbC+zpA6olhPKHZ+CXU2ht0
	K5qAMVYU93WV5R+6yNvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM2v3-0006mX-OE; Thu, 02 May 2019 04:02:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM2uz-0006ld-U7
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 04:01:59 +0000
Received: by mail-lf1-x142.google.com with SMTP id k18so775123lfj.13
 for <linux-riscv@lists.infradead.org>; Wed, 01 May 2019 21:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wFt7883PSp3sr8375jT8hC/v5fI/cu96gfKmIMdklMc=;
 b=NL31EuKphJharQ7ownjb9GhREqWgylPR8oRdfySKPZMDjNrY2iEQE+rRHxT4ngNhdt
 S3dsJVBIj5WOjo2zeN5xhW4Q0JGirUI/rk/HumUBXGZPyY6c/J1IBbu6PR9T1NV5Y0wo
 oq3rJA7JQDfBlz0eBBDCFI0gPZ23MuCxEtssLK3CzJPda4c/lvmt5xJUeEVYEz/6IAfQ
 OOx1LWqEaZ/C69l5OxSAB7ViB3GfHPgoJiLsWv49NTYer+IitWd4Skkxi65dDWAJtav6
 B/w2l2m0I9Wxe+wHEDFd2VXNqAkEstJoKby3kTKWhlMthCaJHtP8Y62rrHurhz+U9nD4
 F9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wFt7883PSp3sr8375jT8hC/v5fI/cu96gfKmIMdklMc=;
 b=t384mB8vs62kZrQqCDfB0Wz69K9qgdvTZAuMTbI9z5/1avgPqcpXgK6yD3zRt4UijM
 YySj9IaoJjbhfWbx0+HLcyqiYaR7rN7FEof77YRKSyeo925RVXxSWQtkgV3vkDW0Ud7j
 +UkFkAakAyB376SiaRLV24F3gane42gv3owvIgduThuTqdkvvAKde+8MKPnVG827Lhwt
 vx4Ti8GDmiGBR09WqT+dE6Qvg9JlSOS7eCTAoD82CUAz8/owVl7TAbV4pqTPJFPd+rxw
 41xoEL2waiFXZe0TAS+a4wz4VbY0Iv0l5dif9PsOi6KbGthm5DE3X11Kjdg8rvWzfeNg
 hgXg==
X-Gm-Message-State: APjAAAWIpUgAGfHQm5RUB4pTmJopYAWfHstAn4Yku4HdkX3r1DDyLrot
 3qjrm8auL4++Qpp/HxfNASg9mH5oVYFY4u0L8v7V3g==
X-Google-Smtp-Source: APXvYqxzdvzK/rjINuA4zAT9PeOdoZuUwGQBTyS9ONY/hM54JNu3Te4R4w/vTFUvuR1Nv624R8L3skIAT6evE9QmbPY=
X-Received: by 2002:a19:81d4:: with SMTP id c203mr672545lfd.160.1556769713184; 
 Wed, 01 May 2019 21:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <1553508779-9685-1-git-send-email-yash.shah@sifive.com>
 <mvmbm1zueya.fsf@suse.de> <mvmpnqcsn6u.fsf@suse.de>
In-Reply-To: <mvmpnqcsn6u.fsf@suse.de>
From: Yash Shah <yash.shah@sifive.com>
Date: Thu, 2 May 2019 09:31:16 +0530
Message-ID: <CAJ2_jOFu-yCZV_A4B48_fLq7h7UA6LUWhgpxr0uuh7vhW9Q8pA@mail.gmail.com>
Subject: Re: [PATCH v11 0/2] PWM support for HiFive Unleashed
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_210157_972616_B86A41FE 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andreas,

On Wed, Mar 27, 2019 at 2:34 PM Andreas Schwab <schwab@suse.de> wrote:
>
> I have now found out that the ledtrig modules don't load automatically.
> I would have expected that the linux,default-trigger entries would cause
> the load of the corresponding ledtrig modules.
>
> But there is another problem, that the leds are on by default.
> Shouldn't they be off by default?

The PWM default output state is high (When duty cycle is 0), So I
guess leds will remain on by default.

Are you able to test the PWM driver at your end? or you still facing
some issues?

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
