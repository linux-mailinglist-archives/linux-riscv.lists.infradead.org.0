Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC970A3A
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 22:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XehiEkvhFfe50e0LISZ2MK5v3HSuCZpV93LV3xoxfY=; b=Nss48LL0yxj+4H
	HY/0w/Nota1HUw3DlSD+Celi9XAZ8g9UrkL3abvdEXHUgBzasBKK2Qd78Ty+Vnrg7o1NGuYdBooba
	Thu5Qg3cOlv8ERArY86PbIgsOubrx/juGKVA03DZaBk7NfDCNckmuakcxNXk1UrQWXao3LWydYpk5
	4Y5uy0fAlI1Lfnc+uK3p93IYT640t1WPlbs21L9ApBejyN1rg2oosFAweS7bU/GXUYIhpOaMm24lP
	y6p+qsAjRdGXkCto34YVXY+bndMthqzXSRad09JkCYcyfNLzoDXCJprKwEmRJZqNAggYiHA7yp77a
	pYP4Wzsci26eISWUOtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeTR-0008MX-Ls; Mon, 22 Jul 2019 19:59:54 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeTM-0008M4-4p
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 19:59:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so76685731iom.7
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 12:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=/OH/wTTBC4X8SVdlUJnb/Ot3whBKsHxdPt8gk14iyRI=;
 b=IJ79AYkgljjvskCTjQpSnN1VcH07Jaf0C4IA1a0choaa0aexD+z3BEclu3qrc9dm3n
 lBK21ZNYuMibEYuUgygq+2qS2ESPxBGKUwXvVigWSpRh9CwNlh/ZUXg/MmPBdBUR6ATS
 YBi5nY2XkwV5ILZWw6+gXVamBXBWc7oqg1/guzrXAmEDgJgrn/KAyHYEd1jIUJ7RWN3s
 uWLy87j5aKFkEkCNP7wNl61lZeUBVV7FlRWlRE/C0p1pHbYXu1oqr8iyYY/GrvFZMAUx
 IvaNafhhR7IsprcZ8ibKROvteizgzd7sF6M2zQzbCOghqLdEORkE8voLl1fPRzEn0Eq3
 oqmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=/OH/wTTBC4X8SVdlUJnb/Ot3whBKsHxdPt8gk14iyRI=;
 b=Fq/GjRqXxpRVXdsAQFZiX8EUyn1JT0CJzMIiSB54cYx8P5zMKmrJ2/+pYqkdyUMuJt
 2dW9P9Bdtw2GvcOFuO5Gn1iLL4VDgPaNK07sVDBNiOpkvuulhzSLUzuzyxERvbjl/nqf
 UlbWbTSDPZzjMf77Hl0e74k3hvRkeysRHLa+aWislRo8eyWVZknSP6K1reUe+XcKpev2
 dzVHa2iiF6Ry7k4SghVKhpFRi5pPvUVMuMY4qrw+Jii7yvO03nvgNETgdlFGn3gQI3EG
 Me+klM/VV243+VMRihKU0Q2k1266rY/+Qln6QkNICqEcRmaNJpirB+YaYLFfpb2ctiIB
 +oYA==
X-Gm-Message-State: APjAAAVjCbMkTyBlwKonPkPCAkkpDv869d2vADpCId1T4el+1PSbES2K
 A9b+biiLcJh/TcgatvaTGNHi0Q==
X-Google-Smtp-Source: APXvYqzscqmldHBLHAIijDkbQwm+paiGghQKVRTUe6alP23cCGUxgKPjiGuPPJhasKI7fp5io+M8rg==
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr69303919iod.204.1563825587225; 
 Mon, 22 Jul 2019 12:59:47 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id m20sm39336195ioh.4.2019.07.22.12.59.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:59:46 -0700 (PDT)
Date: Mon, 22 Jul 2019 12:59:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 1/3] macb: bindings doc: update sifive fu540-c000 binding
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221259300.5793@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_125948_192701_A1FE8175 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com, robh+dt@kernel.org,
 ynezz@true.cz, linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 19 Jul 2019, Yash Shah wrote:

> As per the discussion with Nicolas Ferre, rename the compatible property
> to a more appropriate and specific string.
> LINK: https://lkml.org/lkml/2019/7/17/200
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
