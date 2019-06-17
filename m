Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FE483F9
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OZqsj9snfvMIDyzZvpGJTN8KwFSn3lVm/TDNQACkppU=; b=OZ8zlDMOT8zMXTmujMzT7rIav
	mcQe4iZ79BimuBoJCPnt6L7DvOQH1Oid5QbOAgl5XbNgnhNW+iPqm1hvWG43f7dvp8aNx0GNs5Nod
	CqYElfpKPsZDFA535EvitJIs0FfRGOwOCjN0c5pysmOtM2xhd0nnQZz7j5uGLkZwc+Mz7KM4ne0Jc
	bS/TSX9XO5gXSk/Zv1h6dVF4unl/Tp8xoTMyWBvuzrodBE9lWolzPdG+IssWKC32ugS5Ah8rk38Ua
	AEYCjsCNNYAa81N2eXj/vmVqtGAXO/nhn0k2l9Ox7VtSHzXscqs6X5d7b33PLf2y8EUMoh7h+peil
	3bHdQOOIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrjB-0002jS-IW; Mon, 17 Jun 2019 13:31:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrj9-0002j3-4d
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:31:16 +0000
Received: by mail-ed1-x541.google.com with SMTP id d4so16162039edr.13
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iglT04FcipTQZ9R1tL/JwrAUXSvZoEF8j6evl1x/Nbw=;
 b=Dob6PcycwADLVyjBw2X3Y1D0nn58KYyDmxO72Maix1lCjKRyuifKMWWJonI8tIlSkH
 vAJnn1O9DjiJfgbsF+aPG8XNZM/bGgi9JxDYKQokBGzW0MEAqPfCwOT/DLyhp8qUIbAn
 H029he9fGLLeHDUBnpsysGKFo0q+Vz60SsOEWh32YD/Teudh5InYovGZeDL6W62ZPYZz
 AJZwfjO/x3Sv96UrvrXTNysomgEjJLE9Z5mZpCtjBG51BfBmXpkKnm2UiXSYM08sKozM
 4fiTGbN28luuqq8XTWUhtfckT82uE2jbS0d24lHGOp99tN6Ti+KcTgjajeNFVAE8DAyq
 B1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iglT04FcipTQZ9R1tL/JwrAUXSvZoEF8j6evl1x/Nbw=;
 b=E5xM8V6fqG4eHT796Oj7L5RXW/esfM93RzyHN3iYnOCxPIyfmp1R4+XNsyFbh4Omvl
 ynmX++pnTCYIx+acvXZny2qSJ3sFReKjGyXp1dxFWRlSZykaaocBffPvc9MkeojK3L00
 JSR1x39fZuPHMQTP0kFyDxyFkF8AqB/fhXaIAz7feO4/MUqBKQokbldxu+/bolguE5CE
 UE337VmfkjLId1crqG6XcPkNahx+ETLrK2fh7cjdphc3RUoJSWssM0PeJ1XU9BVqUBbe
 wxrd1zaseVcp3nJXrDp1hFEJENTGr6XOPchfbliG/O/haR7XP6HXsMYRdOeLozza5rnh
 3+eQ==
X-Gm-Message-State: APjAAAXm3/tmYIyoHPu+p9YJ96wcoau/UJh5zhuHSvJO5JjoHLUMVg2+
 yqmWD4mcyUxne0HVIwq5xEAJQQ==
X-Google-Smtp-Source: APXvYqw79dPHvyxsf5mZq0pY6zad6SdFISOeob5pZiNfxzm9w9Ka+tH+zRlNTgEaFBi+McaBz4N46g==
X-Received: by 2002:a50:92e1:: with SMTP id l30mr26073223eda.141.1560778273479; 
 Mon, 17 Jun 2019 06:31:13 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id o7sm2141917ejj.88.2019.06.17.06.31.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 06:31:12 -0700 (PDT)
Date: Mon, 17 Jun 2019 06:31:12 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: Working device tree for the HifiveU
In-Reply-To: <62E04A53-803C-44AD-AAFC-EAD7D6BFE289@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906170626460.32654@viisi.sifive.com>
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de>
 <62E04A53-803C-44AD-AAFC-EAD7D6BFE289@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-732196312-1560778272=:32654"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_063115_184221_A5902EB2 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andreas Schwab <schwab@suse.de>, Yash Shah <yash.shah@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-732196312-1560778272=:32654
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 17 Jun 2019, Troy Benjegerdes wrote:

> > On Jun 17, 2019, at 7:49 AM, Andreas Schwab <schwab@suse.de> wrote:
> >=20
> > On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >=20
> >> On Mon, 17 Jun 2019, Andreas Schwab wrote:
> >>=20
> >>> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >>>=20
> >>>> On Mon, 17 Jun 2019, Andreas Schwab wrote:
> >>>>=20
> >>>>> What is the correct device tree for the HifiveU that works both wit=
h
> >>>>> 5.2+ and U-Boot?
> >>>>=20
> >>>> U-Boot should follow the kernel's DT data:
> >>>>=20
> >>>> http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Ddoc/device-tree-bind=
ings/README;h=3D2ea3439a170236bd912930991ad70ee7289dcd29;hb=3DHEAD
> >>>>=20
> >>>> Thus the upstream-bound data is currently here:
> >>>>=20
> >>>> https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/=
?h=3Dfixes
> >>>=20
> >>> That is completely useless.
> >>=20
> >> If you have specific questions or comments, I or someone else would be=
=20
> >> happy to try to help you out.  Otherwise, there's not much that we can=
 do.
> >=20
> > It doesn't even have ethernet, so how can it be of any use?
> >=20
> > Andreas.
> >=20
>=20
> Could we please include Yash=E2=80=99s macb patches (and
> associated device tree changes) in the =E2=80=98fixes=E2=80=99 branch on=
=20
> https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git

Yash's DT binding need to be approved by the DT maintainers first.  And=20
ideally, his MACB driver change needs to be merged first by the networking=
=20
maintainers.

Once that happens, we'll be able to add Ethernet support to the upstream=20
FU540 and HiFive Unleashed device tree data files.


- Paul
--8323329-732196312-1560778272=:32654
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-732196312-1560778272=:32654--

