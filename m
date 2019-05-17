Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53D9215C5
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 10:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5kY2/b6dsVDqfMnNWH3VpJmA66CtVTtpPn/wuBUpjw=; b=DjScJwkv2scTYQ
	wbqDfCcrRsYQyGssz8Cfp6NrJGVKxiLpnQvZSy0poaTDBEhATu9MViKhsYeq6VcsdBoqO5wr5Y4My
	I2BY+usMxjy+hfiZAqOQK9xMk3DJr44LuKdP6ieg+C0ufQwiVcsKXD4M8kpzGYvbwdfJXyXQoS/h2
	SgREbtL0kxpKXaEpDJIjUsYQAif8lszVpOk8MrkvDDRqMhNlpwbsvhxmQ0iR+kpnhnMIsoTScSGxL
	SwR0BYC4yC6kOmnBSgAe8Re7PX6z7NuIoVCI3OYrhhacWpn2WCvKVpqD6R5RrfRNSHoc1x4nKVKh0
	lVqvkbRfDwMZ2w264/0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYdm-00042x-Sb; Fri, 17 May 2019 08:54:58 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYdj-00042B-GW
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 08:54:57 +0000
Received: by mail-vs1-f67.google.com with SMTP id o5so4156385vsq.4
 for <linux-riscv@lists.infradead.org>; Fri, 17 May 2019 01:54:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0Mq7ikTM4WrfU9v859gJudNUhJRp7mXi1TLYRLRTSM=;
 b=MVFoooM/SjhzHnZfmPoUYK2bFpKDZn79lmwCX6TJJ87elHWUDprKALNSP0Wn2bGZmi
 1BvksfSLHtttHZFE3bnO0giXccFgwsl1c/oDyCgkn6RdKDn5QskXtw2VFkQkYAwJHs3A
 rIHBIrcaTEZfQfVh0nBBDDkpKf+PLjaU2mwlp2LNTnYjQxMIUMllVo8qMdpbZ3KXoO/J
 yL1cbYhzEzeOlLkX2fITmGWQXzmA8iOJRYo2PtFIGb2Nc3PybhDpsSFneopjCR7KWlf6
 eszgbSDHPfWRet7iYQnhA8A+W4m2O6OvcxcvZI48ByVBuhTQDWRWLjcn9eoXwErNAY0v
 obTw==
X-Gm-Message-State: APjAAAV87OkXFralAE67km0UMeFWc0nC4wUpP+QHNN67Mi4bcVLGYqWi
 trSzkngwhI1hBGoll+zXs2rOrqBV1qVYUmw/+qw=
X-Google-Smtp-Source: APXvYqw6KfCwx/5810+PxQUetcDqtlhTRMlqUB9mE4KfpcbJxUoKeel5OToySMAYnXbb6y7lrTVfWrHYJ1fixFM9DjU=
X-Received: by 2002:a67:7c93:: with SMTP id x141mr18300022vsc.96.1558083293857; 
 Fri, 17 May 2019 01:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
 <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
 <CAK8P3a2EEuxh3uhsqauEC_vROZ7tQHhFwxgiLUnrgtpMdb3kuA@mail.gmail.com>
 <CAHk-=wiH=vGjsW9MdWFGsgto2W+71sA4XJ7CSubpXkbpC_bGKA@mail.gmail.com>
In-Reply-To: <CAHk-=wiH=vGjsW9MdWFGsgto2W+71sA4XJ7CSubpXkbpC_bGKA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 17 May 2019 10:54:42 +0200
Message-ID: <CAMuHMdU0N9j2TRtJwJx5uxE2ScFnB-MRrd9hzaXJmwTuY4Ldzw@mail.gmail.com>
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_015455_551143_85C8EFDF 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Linus,

On Fri, May 17, 2019 at 12:06 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, May 16, 2019 at 1:34 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > I have reconfigured it locally now and pushed an identical tag with a
> > new signature. Can you see if that gives you the same warning if you
> > try to pull that?
>
> No, same issue:
>
>    [torvalds@i7 linux]$ git fetch
> git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic
> tags/asm-generic-nommu
>    From ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic
>     * tag                         asm-generic-nommu -> FETCH_HEAD
>    [torvalds@i7 linux]$ git verify-tag FETCH_HEAD
>    gpg: Signature made Thu 16 May 2019 01:28:54 PM PDT
>    gpg:                using RSA key 60AB47FFC9095227
>    gpg: bad data signature from key 60AB47FFC9095227: Wrong key usage
> (0x00, 0x4)
>    gpg: Can't check signature: Wrong key usage

Works fine here.

Oh, I do have the recommended cronjob:
https://www.kernel.org/doc/html/latest/process/maintainer-pgp-guide.html#set-up-a-refresh-cronjob

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
