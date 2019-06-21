Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615A64F11C
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 01:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fk5LmkOqW+9qZhwsmH0M8UY+NGI0pPsLq0MCGOB1ME=; b=fcr71D9gIIrOUx
	WMPk1CmSa+Ob11nL5y3qPuUMTM/WjA7MgFybkpYkDhowSbLyus5s2Na89SLcGieAQL58AIYcSuuTi
	1U2Kn0GaqrYgls41Xb4+BNXb3Y5Ecvb3ovvOGtpxuBTvIriN8+owTErwC3vqhW5PCGgwztehxIf7M
	mNTQSY1swILfyRAKJEWSW9tHXKv2Nh2ZHubhzlSPpg+5FCmKnbc9A8WpTMRS17SYnRU6pVSq1S4E9
	guaUsWiTRIEA7rDJQumK4cgdrVDXlsG5WIpOMJT3IrrNLiY9abwUF8YtxEMp90CP6FtdM4bFuEwvy
	17x+EvA3WGhjtefa7oWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSn3-0000xN-FX; Fri, 21 Jun 2019 23:17:53 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSmz-0000wg-QU
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 23:17:51 +0000
Received: by mail-ed1-x534.google.com with SMTP id k21so12358718edq.3
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 16:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R1e60FhCPAFRlo/Et3uB+tLV+ymPJXytHmtB5TWC6bM=;
 b=qrY79a3zRvb8+J9199qIWYSbMQ9P1TCA/3uk9aagwZj1aFnLxiBvKkSFPKd6xZcMWz
 ubxrTWffz9TzpiqQV+W8yg6xzsgYorxqjtDPH4f7+9GvL6UX5/rVUHGxdoF0YOWspzh1
 oXqcN62+5fvIqQZf7qPQS6gJ/ZtETHuxqKO9FMZKwkPVwEchrdfQzemO2AYFaU5FQaAl
 3VYg8O/dUUL21THNo2zJ2l6DCyhPNen4jf6irKKAmU6OmT3fqrV42z2PxxmjkOY0n29V
 L2iQLp4I05sO/w+EZaHKdvEJgWX1YEIj5wFe8hzIvYs8fFywsdbW58YgdX3Ij3WB6y3A
 d5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R1e60FhCPAFRlo/Et3uB+tLV+ymPJXytHmtB5TWC6bM=;
 b=YSMd0FxOeW8DL8ZhHelBLs2kXvhNIyXtCRsX5atOdA5BXb4/DNkUAFO3V24VOpvLky
 nHDqs43Q/4m75XK4SLkFqPhv1il1E/+9iDsL58Iuems6cPc8ygB8KEw/0k7sEQwiDyKW
 9w15J7XdgmwaFgXFruR/pwds1eJ17NbMNhA1HjvqDFQEpYWBsl6cX+2ELFkevZaGXy0K
 1yLPOjbS9rygxHvq9QmXE20yJCsxkcq4+55m8JiBGOZybxRIyiazZM/59SDmIj7Ij+rh
 1fBwm0WPvCsScFlhMKhR1UerRe1/Ok918RTOojSzdlPwM/+aeK/W6CKngvjmFZCoW68K
 vEqA==
X-Gm-Message-State: APjAAAUKfLGjE1zV6DEqcwVK+0rKcRX0298YfPNoICM6qSw/sMXPtxON
 Cqsh3Fn3ZjvZmcxmz5nyfkJCQiUAx6/yI+S6h1Y=
X-Google-Smtp-Source: APXvYqyuRgytnUH3kaa2KxE01zsYxd20VmWWcslgYZbdLx0QmAvBeNWMU0KYW1LQ7zm7FVPoFUCGOYqEmvJo+OE/h58=
X-Received: by 2002:a17:906:fcb8:: with SMTP id
 qw24mr22356645ejb.239.1561159067812; 
 Fri, 21 Jun 2019 16:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAEUhbmVqB+WpsZYbwLj4ZAAL1aESbNO_6roHdq=EfxgjDbcRTg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sat, 22 Jun 2019 07:17:36 +0800
Message-ID: <CAEUhbmX3Ya+2HJEmtS08qM9DLcGCCWFMpyUhxRRjB-Oet0Bx4A@mail.gmail.com>
Subject: Re: sifive-fu540-prci.h license (included from fu540-c000.dtsi)
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_161749_890569_74764480 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Sat, Jun 22, 2019 at 4:57 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hello Bin,
>
> On Fri, 21 Jun 2019, Bin Meng wrote:
>
> > I see fu540-c000.dtsi is dual licensed under GPL-2.0 OR MIT. But there
> > is one file inclusion:
> >
> > #include <dt-bindings/clock/sifive-fu540-prci.h>
> >
> > This sifive-fu540-prci.h is only licensed under GPL-2.0.
> >
> > I think this prevents anyone that has GPL contamination concerns from using it.
> >
> > Would you please consider making sifive-fu540-prci.h dual licensed as well?
>
> See below
>
> - Paul

Thank you very much.

>
>
> From: Paul Walmsley <paul.walmsley@sifive.com>
> Date: Fri, 21 Jun 2019 13:45:42 -0700
> Subject: [PATCH] dt-bindings: clock: sifive: add MIT license as an option for
>  the header file
>
> At Bin Meng's request, add the MIT license as an option for the SiFive
> FU540 PRCI header file.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Bin Meng <bmeng.cn@gmail.com>
> ---
>  include/dt-bindings/clock/sifive-fu540-prci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
