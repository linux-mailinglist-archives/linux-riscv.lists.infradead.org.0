Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D086BB3A24
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 14:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vdcC3JCLxChm79PfxyDg27JUNm+Il7el6G6dcLTgSGo=; b=uO891GaPKtp1CF0ZsbMsjhoxd
	UK8h4Jcgny9Qj3DucpcLa2MD/hhcbOyR1hcLRQ1dcixR+aVMSu3XdMkOuZ5jFut8JsHRrPUUQdn/G
	cBx7lz1NMN+Kk7+dGpqAn0+UvqmI9tfHWWcy8yXC67euHGdyhqK+brS3E5ucB4m/SI/WHfPpDFuax
	aP/HUx5pn1m/v5Ve/LcAofHwf1SHqtft2VtO4e5jfZVVR22zJUalHwvXqaS8T9LSyc5S2UH8LSIOR
	DHSGUWvnR97UUWHJtT0KGr+pghyslEWwFBHSzBS0nJVFDKRZFjDQQAhAyp6QB3hUsE1NUeoJJ/DdJ
	2+SmapnXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pyC-0008Pd-Ot; Mon, 16 Sep 2019 12:19:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9py8-0008PB-Qx
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 12:19:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so7428576wrv.13
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 05:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=NDGvPfQ28itbhitNrIVDuhKKTVjuBYonvfjlM/t21wU=;
 b=Rl9N/b/bMFTs4X2mlxsYJ/i0nofx3+KjiSTSMKqDk7k43o9uPTcRGGKaBLYSGkVa1B
 voTuhEb7qmNSFPUdCT5O24IUW6a4z9+rjv+UCr+DqKMn/VkEIMZfSm/4azEaAAb/kE6R
 Yw2GGNiKSrVNlYy9kP/IOPD6PDxRvn1R3SIIzsaDC2JZLjBfhiWBauUxAVAIgcGjf3bt
 j0+9LP4wrZBuEwrsf8L9QDYddK6psSURIMxWN4x8tegJWReSC2PIgKK9tUTwyY2QcxP7
 AZUt3EanN9GfsJ65EBgauTJoymGZWhyJwd6D7Dft5+az/R2WVWfLaG371HEBh9wWjE1Y
 1bZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=NDGvPfQ28itbhitNrIVDuhKKTVjuBYonvfjlM/t21wU=;
 b=BpHrto4DqkcA6bBX1+wxiqhdZwDma66HqjZRjqazpjLVMedYCWOJUnPjQKTsD89pzI
 S0nuVQ7vdBGP9ySrbyi/7LzqDULJz5UZKpYDLhMTueTAZkp52rp4sHtowlEL7RR8MI1B
 ZjaM6IKdVM2uXIxY6veiNhOX1wiQ1X+Vl85YSEDAgcuJUtKW4QffltOb6NdiQLzjN+oR
 ZYQHVzPLrHyjWHTkMZ6dJ3MAJcShouxL4zGaLp0cAD9tzEYlGevmqRGBU8mtCOrSwHM/
 5ssfzWC6K2+ZOEk2ocQLMwVgG5VKiyNwLNATE2agvk0GXKhqm+Q1jKVmH/Ci3PSmUlOg
 l7Gw==
X-Gm-Message-State: APjAAAWhvzvTmZxMIQgkHwkuagKecPnbeKj2vqe2H1TJprUiel+JOPct
 0zR+8S7RsZmHPoz8+ikDel6j6A==
X-Google-Smtp-Source: APXvYqy7wvBYXW5sQMm779PclJz5ZIXC7oobUxc9rjxX7S6QW5vk4bewbnRrdKgZb166GugimeCvjw==
X-Received: by 2002:a05:6000:11cb:: with SMTP id
 i11mr1328338wrx.171.1568636339222; 
 Mon, 16 Sep 2019 05:18:59 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id m62sm17234528wmm.35.2019.09.16.05.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:18:58 -0700 (PDT)
Date: Mon, 16 Sep 2019 05:18:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
In-Reply-To: <mvm7e68fo2g.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1909160513100.9917@viisi.sifive.com>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
 <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com>
 <mvm7e68fo2g.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1252070807-1568636337=:9917"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_051900_881075_7AD28CF1 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1252070807-1568636337=:9917
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 16 Sep 2019, Andreas Schwab wrote:

> On Sep 16 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>=20
> > On Tue, 10 Sep 2019, Andreas Schwab wrote:
> >
> >> On Sep 10 2019, Christoph Hellwig <hch@lst.de> wrote:
> >>=20
> >> > On Tue, Sep 10, 2019 at 08:57:37AM +0200, Andreas Schwab wrote:
> >> >> On Sep 10 2019, Christoph Hellwig <hch@lst.de> wrote:
> >> >>=20
> >> >> > The sifive serial driver implements earlycon support,
> >> >>=20
> >> >> It should probably be documented in admin-guide/kernel-parameters.t=
xt.
> >> >
> >> > How so?  W=D1=96th OF and a stdout path you just set earlycon on the
> >> > command line without any arguments and it will be found.
> >>=20
> >> Doesn't work for me.
> >>=20
> >> [    0.000000] Malformed early option 'earlycon'
> >
> > Try:
> >
> >     earlycon=3Dsifive,0x10010000
>=20
> That's not what Christoph wants.

I support Christoph's plan to add generic implicit earlycon support.

In the meantime, once v5.4-rc1 is released, I'll send a patch to add a=20
sifive driver section to the earlycon documentation in=20
admin-guide/kernel-parameters.txt.  Thanks for the (earlier) suggestion.


- Paul
--8323329-1252070807-1568636337=:9917
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-1252070807-1568636337=:9917--

