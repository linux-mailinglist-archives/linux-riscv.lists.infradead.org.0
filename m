Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF053B39D1
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 13:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TkmEPr7sFUzzl32QFRZd2ZsP21EXOLNi6L3Ek0MDeSo=; b=KGTp/17Fb6BOBAvBVWzupOnAO
	jnv33qLilfv3U5fR496MbnJ38RehnJOuuE92/TeZDQj9gXzwWDC6s34qWiC9e6COhg9jxsLUyZg2+
	MnSTMKEwgXkfArxFbypXVbvypZWSDvirW/TxB3DfdK8CQ9p6bzkz24BEGzD3T2xOrdhw2LbCuuJzN
	OC+WRhEHsl+i7nhuFxH+iDoclGXh/NDfKFU7FCu8vZmPAxpnfDTFRh28FnOt48HrS8b9zVh4JgNHv
	E2CCm3Y8ocs1Xe+RUTwIfdppnPg0U6VztaVQdsXNoYM3HbQ0F8s7E1BuCy3EOdhSFr9YFvvzh3HFb
	e9qA6sPYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pdC-00013I-T5; Mon, 16 Sep 2019 11:57:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pd8-00012s-2Y
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 11:57:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id i16so3890201wmd.3
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 04:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=A8KpKxE5/TCH8dxfTxqIPDIeEF4A15g4Y1Nx2SIGDMM=;
 b=EFCHz3OIRhtn7f84ycqptRsNU7sOugoVct7LGmPkUvlfrHMqotNHm4aA6HgkcJqEru
 4ulzRNPTuYupGcXDbDRNC/6SH1sX0+RD9v6XuhhGyq1rgfMRwPr6AKyMYNZqSVDLVLxx
 gpXl4TsIljDZ79UupeVt5WX/4j0ojl0XJaXllv93W7s2Dz1tqbiybFbUe+FzqVnzylbp
 FBuihxhA9Hrzt5Ab9N6IQXwGKmqFTG8KKga/WRYLbsu4O5DPdieQLw0szr03eGj9VkiL
 qnWZac7IYohHC4cbIsEI1iY5gJX/KI6Ewenp3fLYkqWI2VPJPqPAWmLjLCabIAdIj9mm
 7+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=A8KpKxE5/TCH8dxfTxqIPDIeEF4A15g4Y1Nx2SIGDMM=;
 b=Arefl2wWMd73lPGfBNYBCheq7N2MwHQcYGUZkHUM37uPxxJ9wMIFMMI8+8UcrS47Ib
 xHHU1KMqtAYU+iVekyN6k9Gv3Qtfx1tbTE1qURRgO41aokxo6w6CDxqZFlir+Audq7YA
 MRFploz7rvL3vNvwq3ZRXIs0xs9Bv5++bSiVE31+MKR7vf2rP0PlMxzq33RWWfkw9Bpr
 2iGBOtMG5yBF3FfgzH5IWZ7IQC0a/m615Ki3IDV2Q8bACaFkAUpbpDmIpajXnF6dZ6Eg
 WYcnMcw4b5npT5DTzAiGLhmrVGYp05kKgQXP8nxGfMbfj2Y+FUldarhXsfTiYyWgfJHW
 X0RQ==
X-Gm-Message-State: APjAAAUPTutYcv55XPf/pF2RztFkWPJcLXYoOHl5ckjJl8JdrUCxtmR9
 Ecjv3nKw0rq+nQIp3FbQpXMz6A==
X-Google-Smtp-Source: APXvYqwvaXAToK3N7Dq6gBnUUF2ouck3zigq8a1VamrYjh9bMW1cIFLpi8bkeIrkaTJxW6vXEmn4gw==
X-Received: by 2002:a7b:c5c5:: with SMTP id n5mr11858939wmk.69.1568635036421; 
 Mon, 16 Sep 2019 04:57:16 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id r20sm1421258wmh.37.2019.09.16.04.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 04:57:15 -0700 (PDT)
Date: Mon, 16 Sep 2019 04:57:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
In-Reply-To: <mvmzhjcr2d4.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1619585291-1568635034=:7214"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_045718_183127_C10E2C6A 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

--8323329-1619585291-1568635034=:7214
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 10 Sep 2019, Andreas Schwab wrote:

> On Sep 10 2019, Christoph Hellwig <hch@lst.de> wrote:
>=20
> > On Tue, Sep 10, 2019 at 08:57:37AM +0200, Andreas Schwab wrote:
> >> On Sep 10 2019, Christoph Hellwig <hch@lst.de> wrote:
> >>=20
> >> > The sifive serial driver implements earlycon support,
> >>=20
> >> It should probably be documented in admin-guide/kernel-parameters.txt.
> >
> > How so?  W=D1=96th OF and a stdout path you just set earlycon on the
> > command line without any arguments and it will be found.
>=20
> Doesn't work for me.
>=20
> [    0.000000] Malformed early option 'earlycon'

Try:

    earlycon=3Dsifive,0x10010000

If it works, you should see this message on the kernel console very early=
=20
in the boot:

[    0.000000] earlycon: sifive0 at MMIO 0x0000000010010000 (options '')


- Paul
--8323329-1619585291-1568635034=:7214
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-1619585291-1568635034=:7214--

