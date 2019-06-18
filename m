Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1758497C6
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 05:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qiQclzzSuQFRKUisjynp7DtKSX4IVM0gqqLXZbEqcMI=; b=N0/MaRcekGUUowv3KbHmOBVyO
	QanWOSQ/IN9ELhIO9gYMUwNk0qJyZPStwpBv+EZa9NHhY7WvyBgO8ZcyuZcxDe4N5S9tqCjHuYzWJ
	G4waD7Hr9iumqX5Iqx8T+uUlMLC98YJ4Ha9AvAK7FctrCpIzvUMpHy6MTHGs7VJmYxngfr0aomLd2
	uAMpQVO8Drz5XJBYiqRDqOZGBvEkrBh918KkVH2AZEas3E1cWDjXmqCWTjyzUi9faJl2jTx40RLON
	OumHTtCGjX0iaZKQTZn3xm/LkN1Tm5NRag3tj3xzLvuZUTqPNbNiiDvZ2o/UP3/p4d9KVrlmmEbe6
	HrOBxIRaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd4lJ-0004MQ-Mx; Tue, 18 Jun 2019 03:26:21 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd4lG-0004M7-TT
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 03:26:20 +0000
Received: by mail-ed1-x543.google.com with SMTP id p26so19379279edr.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 20:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=QB8lwnfAWM5eSh/acU+B5HKYIehkA7mV7O4FwPzcexo=;
 b=ULNdvw8+tq8QeUnFaQePLqg1iryaaYp/aWw9fGLemPYhJkDQ2H5XhjVIbUsBgZd64F
 61o+JYMVnvgUgyC2GM30u6jjijf/A+ftp23F81RdhJ6D/jXzJERTFZQtARcBDdkleqUm
 eSS18Q1TKM1uvznC79K30CCQx89bqEa2ol9lykGFnO2MgthvqOpwwdQlIaF9soPy+4eF
 JjRf8fu6RYvl3V91iXvxVZWnUOBsUx2Y413J/6USyWI3DJBU5uVxOTO3zdofWGkN+zPM
 NZTnFSpl1IBQtE31RIDo+sedqJJ1JRgx6wCpeaKFcOVy9par13mVHGq1nrg8fik0S7v6
 NqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=QB8lwnfAWM5eSh/acU+B5HKYIehkA7mV7O4FwPzcexo=;
 b=RGcawCQep56fbgfTeScBt4Z/ztfUfpFNlJzn6h4GuuCUT7iqfc73TmtqHr/R2SEben
 K5cqXIPLPGSdw/841hKqO5ccDyyUbdz+PjZp59P8hxRsohJ2F78LYc+IjJ4GLVXod5Mn
 iYvWmqWSPOvXPwUQ1eD1EgW9kJsqbxRkYikuDdNpu5e3TWSI29EZLnQ7rENLwxn7nhk8
 hIZ6pVDYaEcb89BwK6DMoDuwInu+Dq0ikIuZEESOTjak+FvWc9O0dFYHHhCyxXTrhSo4
 rMmxZwdcyIDuLbwzmArHqZNSANeiwa2H9Zp2olbiRu13v0fM+csHEypJ901CVFSJZev+
 4OBg==
X-Gm-Message-State: APjAAAX6/jmaX91cvhcmLNUONgLULpATTSBW3bzJ8ebj+icY7vmOIeFl
 1d555At3xmjaVufXRvT2KaqksMZx9Zo=
X-Google-Smtp-Source: APXvYqxL2/de9bApOM2UVDgl9BgIS/9w1EYyRUg0PCwWi1lKmzkg9zrpNro5VMkplRIqrlo+htLQGA==
X-Received: by 2002:a50:b962:: with SMTP id m89mr58857595ede.104.1560828376089; 
 Mon, 17 Jun 2019 20:26:16 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id d1sm1800559ejc.72.2019.06.17.20.26.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 20:26:15 -0700 (PDT)
Date: Mon, 17 Jun 2019 20:26:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <Alistair.Francis@wdc.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
In-Reply-To: <d2836a90b92f3522a398d57ab8555d08956a0d1f.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com> 
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
 <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
 <d2836a90b92f3522a398d57ab8555d08956a0d1f.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1540646092-1560828374=:15057"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_202618_963228_42405B94 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jamez@wit.com" <jamez@wit.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "ynezz@true.cz" <ynezz@true.cz>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "schwab@suse.de" <schwab@suse.de>,
 "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1540646092-1560828374=:15057
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 17 Jun 2019, Alistair Francis wrote:

> > The legacy M-mode U-boot handles the phy reset already, and I=E2=80=99v=
e been
> > able to load upstream S-mode uboot as a payload via TFTP, and then=20
> > load and boot a 4.19 kernel.=20
> >=20
> > It would be nice to get this all working with 5.x, however there are
> > still
> > several missing pieces to really have it work well.
>=20
> Let me know what is still missing/doesn't work and I can add it. At the
> moment the only known issue I know of is a missing SD card driver in U-
> Boot.

The DT data has changed between the non-upstream data that people=20
developed against previously, vs. the DT data that just went upstream=20
here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D72296bde4f4207566872ee355950a59cbc29f852

and

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dc35f1b87fc595807ff15d2834d241f9771497205

So Upstream U-Boot is going to need several patches to get things working=
=20
again.  Clock identifiers and Ethernet are two known areas.


- Paul
--8323329-1540646092-1560828374=:15057
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-1540646092-1560828374=:15057--

