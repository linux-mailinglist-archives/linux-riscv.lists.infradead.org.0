Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C10614DEEB
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 17:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lpMiJfrub0PTC1L11SLP2pInMV14OSNGJ7NgRGgD/+A=; b=nUn9rbuR5kWdX7G6p2t5ygVME
	jkq4bkhjsYYFXqRHOjDN8UKtYhmFQGIw3iFd/0CWp/Ja5s4+nCVoFy/1kUrkQCwX0XpBKfKXvEK2G
	ejigr6HS08/LPlkLH0Kc61UMHDvtRGn+Khp8ldhfgmllo9NSSh7SKCyiNp1HazEniVPxXiZkx3lLM
	zraFVXBJa8VexDOAVtRlWTGvTm5K5E+LaxD0zYVNNmqE/p8IQ4P+AbQKbICU+4T0HmQfudU5L0QDC
	2O6Q4Xc0uHs7lfyIX2t1YoOrmZ1RjaRHnkW82zFl8rJFkKgMuLGUd5ggccgsyw8TVr1fO6m2TVTQR
	KtNK78J4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCZ6-0000Ft-70; Thu, 30 Jan 2020 16:21:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCZ2-0000F6-14
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 16:21:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id s10so4419272wmh.3
 for <linux-riscv@lists.infradead.org>; Thu, 30 Jan 2020 08:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lpMiJfrub0PTC1L11SLP2pInMV14OSNGJ7NgRGgD/+A=;
 b=TlEP5FSqpt8fAOj//tzvxByrO4yePUNNUQ+J19jA2KVtPrdOWyzI6jsfPajSwNa+F9
 6jWL6fd5tgFZqzNib5P3wykkQo0k1ffI31vE9ceqAcnZTaVLfsMlHtO6l8rEIMCezLFB
 Tso8NCqGvKaix4WktsUOU4eae8ZjE/JG/+G7v4pXIX5ZpVNSa4+JYjT2F/6IAMJ0K7Fn
 fWN9Iv0ImVnfn8/KieGRpkpLcVZncND0aTQ/m44YlFS0AMNwqACZn2mQo8fGWL5o/WhJ
 PcR9kvpR+JIE3+tD0eT4eXPASeGiBTG1x6HiXg1XS1IEOLzQJ4SStcH+2cgLz2ubukPV
 vxTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lpMiJfrub0PTC1L11SLP2pInMV14OSNGJ7NgRGgD/+A=;
 b=KrPExPHePiyx8GzqOBe9Y9S2Vz3AZwLCVSLgeymUjTOjojfUZnSCVBqISldY9ZkqKU
 4OmdSYqQHYTLG//Ad06ZQTcUvIIAQDUaznwIPpJBhw3QgeAxbCaaq1MNq3XUAcS8pvGF
 BaCtfkuf/aNo3JXilW2oB8l7sWCVbVpr6H+FmPlo4I2hkTM4MzKooDfU1SoWN925Udun
 Sk6qoRgrVg7td9iyy8V56xHYMvz0Z9gmNDXLtFjdvLnH1JuK5K837fkv9LY+/+506Gyf
 9ix9rkkRXa8m4UY3LOv8LIeDWE/aXcmtOpQJUqmMq3TIXGQdBK762m1wIO4kmfJkxQpI
 Tm1g==
X-Gm-Message-State: APjAAAWfL9jaRCX0OmhN8nkYOjOWMYicKB8GMwR8Lvf0IXLk72CJIKEA
 Sv4SH4X/22eNodOe7tVZq7svWIFWla3LtEeNZ6UBAqrDItuoSQ==
X-Google-Smtp-Source: APXvYqzIe7FyHcdXMAcmSZFaNieeoZpQ/NH6npbFayATvaKyq7bNaPqOFlgEOlwBmp2BV73QesdVv248XEmrn37mdYE=
X-Received: by 2002:a7b:c258:: with SMTP id b24mr6739551wmj.140.1580401266752; 
 Thu, 30 Jan 2020 08:21:06 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
In-Reply-To: <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 30 Jan 2020 17:20:30 +0100
Message-ID: <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Paul Walmsley <paul@pwsan.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_082108_092759_D33F4E15 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Vincent Chen <vincent.chen@sifive.com>,
 Carlos Eduardo de Paula <me@carlosedp.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
>
> On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
>
> > I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> > network features I need baked into the kernel instead of modules.
> >
> > I tried building a kernel with these network features as modules but
> > when loading some of them I got this error:
> >
> > root@unleashed:~# uname -a
> > Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> > riscv64 GNU/Linux
> >
> > root@unleashed:~# modprobe br_netfilter
> > [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> > addressed by the 32-bit offset from PC = 000000003dfd6deb
>
> This is a known issue:
>
> https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
>
> https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
>
> Vincent is looking into it and I expect there will be a fix soon.
>

Is this patch solving the problem?

https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589

It was incl. into
https://github.com/bjoto/linux/commits/rv64-bpf-jit-bcc (not posted
upstream).

david

