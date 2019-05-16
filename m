Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F92E210B7
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 00:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFE0gDVEO+6epuPn3M2uHh8vcnatBFSZO5uGojemG2w=; b=BjPMyCLyUc4Xmw
	r/sVnN+c2zvKLULOAjlJ6UzlBoL1jf2ZCk0ra9p0dcyoFylwIzj/0j89Dy2YQozcMc2t4pkSGrw9Z
	lgKX21ngmn9/n6/sAkilXODMN6LYlziTQJe40zMaoEcS9j91CQ8WFZc20JFb95FA1sKxuUFP6Ltys
	8JpT03B6VSUAfaKJfZQuloCdLCFLWoqOhQbf3Zu1wRjlsSFDcaqWyx44/2Rnspt6vNsD1GMdD1/wy
	M6AHPP5O0qjGF4oHU8xgqCwJU8ACsPoip0/c60fNgg5Z7ckCWD399vd/VOohe4+kn28vuCkOYI9Kg
	JH/7Roo+fNLXb1YtcEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPBR-0006sK-8O; Thu, 16 May 2019 22:49:05 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPBO-0006rb-0W
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 22:49:03 +0000
Received: by mail-qt1-f193.google.com with SMTP id t1so5900388qtc.12
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 15:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+HCSHfWWQoOMU9IYPEECn6c5bcFnN/huF1hZpjyeGtc=;
 b=fyozxbJm0HHSWbw4b+uR2nZiKmQyIYJnr93Ce7wkYmrfknjkAwM4V3mbRYUyCb/an2
 3Id75cJhTQxDyUSs8Pnrh0A4xA+NyuncCReHAiaWar19HEHbQst9bvphRUVTyNbRCT0M
 JHT/GKQSGI9AD9tEQs7qAWAhwj7gbfPJu28Ef95yz02SuUkun2T/fULJlBtcwgBPyD2u
 d4r4qEy0OL8xs9VDa2wPdMjadzwBc6SHO3XQoqhzepof+31goyHHVblVAfeN8lUkTAto
 d/t93ZLKy0CjwmqSJPVVDLb/foOlkbV+YN6JL19+Ueyt11EUzjcHqZh1wxzokeuuMAZU
 qvqQ==
X-Gm-Message-State: APjAAAW5VK7H5unv8e5pYShMxO0FQ1FmQneGKb8vmbS3bVKf4a210y54
 ZqShPh6l6WvAqWiKYSItprmmB4AtQmwR2IjyKRg=
X-Google-Smtp-Source: APXvYqzuJv0swkCZ9YDJNYDFgYTnD0BTmGh9QBNFwePpoN3V/fGbw6KJlz3gLIuDNdfa5/lPPkxazRL9tvT8iIpUFKo=
X-Received: by 2002:a0c:b78a:: with SMTP id l10mr21490193qve.62.1558046940896; 
 Thu, 16 May 2019 15:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
 <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
 <CAK8P3a2EEuxh3uhsqauEC_vROZ7tQHhFwxgiLUnrgtpMdb3kuA@mail.gmail.com>
 <CAHk-=wiH=vGjsW9MdWFGsgto2W+71sA4XJ7CSubpXkbpC_bGKA@mail.gmail.com>
 <1558043623.29359.44.camel@HansenPartnership.com>
In-Reply-To: <1558043623.29359.44.camel@HansenPartnership.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 May 2019 00:48:44 +0200
Message-ID: <CAK8P3a0QsURY+QrkvBh5zS12cCLYD=ssVtus_6Q_DSnB1=1y3A@mail.gmail.com>
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_154902_054978_E8A8C572 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:53 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Thu, 2019-05-16 at 13:59 -0700, Linus Torvalds wrote:
> > On Thu, May 16, 2019 at 1:34 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > >
> > > I have reconfigured it locally now and pushed an identical tag with
> > > a
> > > new signature. Can you see if that gives you the same warning if
> > > you
> > > try to pull that?
> >
> > No, same issue:
>
> The problem seems to be this:
>
> jejb@jarvis:~> gpg --list-keys 60AB47FFC9095227
> pub   rsa4096 2011-10-27 [C]
>       88AFCD206B1611957187F16B60AB47FFC9095227
> sub   rsa4096 2011-10-27 [E]
>
> Your key is a "Certification key" and you have an encryption subkey but
> no signing key at all.  Usually you either have a signing subkey or
> your master key is both certification and signing ([CS] flags).
> Certification keys can only be used to certify other keys, they can't
> be used for signing, but I bet gpg is assuming that it can sign with
> the master key even if it doesn't possess the signing flag.

Strangely, the copy I have on my local machine does have the 'S'
flag. I sent it back to the server now.

> You can make your master key a signing key by doing
>
> gpg --expert --edit-key 60AB47FFC9095227
>
> Then doing
>
> gpg> change-usage
>
> and selecting "toggle sign"
>
> Or you could just add a signing subkey.

I had some problems with creating a subkey, probably because of
some misconfiguration. It seems to work now, so I created a new
signing subkey now for future use.

Thanks a lot!

     Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
