Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863202693E
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 19:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KMAk7dazhUAzrSvqL8J45ZYTF+AWC8a7XbpCeD/56Nk=; b=Ri8Lw51+aBPLx3HSDM1DHW7ad
	mNeXVJrMAFNxxfKiYBMpbHqiPTSLweRj+MpfYz/UJvz5WkpRY+VeGoINWsCDLR0yEF3swuxNC7t9R
	t/TyVEwrSRUAMuWbuvBCRv2gi2uX8cMEM7USa27dLsv4mQUeelg8GneQf4UAtu25ODUokWHNYXTuN
	cbFXuWAyx497v9vn9T4UQ0uT/dFa9UkvT3LtnPql7afNaM8e74tlb9xIfLiBj5BabZUyQYDwGM2mM
	8gIKPIExHqGuHrkfoH30VtlJTIerS1sqLb6tq+o7d/1zBCQ5J9BRD0B1f71cKf8JddBLXgAyUZa7/
	U7ZhJKJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVDr-0006JY-RS; Wed, 22 May 2019 17:40:15 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVDn-0006J4-RK
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 17:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558546812; x=1590082812;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=n6x35VtZTlkNHIZdx1PkHcbLXylZ0+3u3HfFRL1QJA0=;
 b=KNXJs2tRmBos/xdxHX8sMOcvc/Ay9Nmwgp61I5v81NqRtpNrmqE9m1/d
 srgpvvZKvE00v5/gHnwJ5aUXrHsG0tBPEEh3jBFk484ZYbXHJky3O4j1L
 gbeFXeVhAnDPZYJecVrKZqO+zWDQPlG3MGq9zH4m9cp5QMfbK/qAdyJmq
 cgs3VwpzNdtwgv2UN+jV03sxN7HLt3Ch3Q84EPbVDeH76D3ZJgsQa614b
 z9YtTt5rm/dLssZaIo8XzwMIAyPDZG1diteZmq61c+SomAMJnSFWzOQXa
 DExvSExjmp0BvHKJbgTryr8eB2pCV0dBobIDTuEISyH5gsY5N/Gx52dWU w==;
X-IronPort-AV: E=Sophos;i="5.60,499,1549900800"; d="scan'208";a="113808034"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 23 May 2019 01:40:07 +0800
IronPort-SDR: UFFjYFjOaG/MRxtscYzYn91Px5FTeQFtisH6rDjYsJ4E75FQfjriVx+ZVXkYAfNGAmEVJ950Ni
 t1ZMhaYLcI4fBFKFrK0RhiPi+Q6QPGnLdS98T2Ca8dBF4Iy9wT3bP73+nVngPUtY3+Q6hj0JPi
 XJ51FoLOibMzUzwMDuMGaRXQYNyeOLgmcZsC9Zk9rBnGDi1mvmJiBJy/SKWg3iyLn2Aj6LqAyM
 CqC/en1fSVlh3jXuTVBjCLTz/DsotfWMaXWF4ICQ7g9uPK9kA5j1oSe2u/GqlG8ezTFV2Fc57d
 tijjnmAKr3SqSbJDzPNEwe5q
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 22 May 2019 10:17:51 -0700
IronPort-SDR: Qwe+Jrl5NOkpTf76XDGeEN6Rt6WdZc4sEeSbHvL/piz2BBijBjnYrGQG3Ml2ksa+KUJM8ZO8Ko
 vhaSgfZaCSSrmNYFtFfztsCaATSBc4J2U5gmKpv5crJqc2POw6LMTExb+Jn3i22RGNotYnmJEp
 GRaO02Pmka5QqK3FGTLd4F2no6aLPWlBix3keBgULsSR98UgvYxfffnS82IVzEGnb2jnpNFaDy
 50olI9w4dBIJDadF9pwEhixK4v/R6DHaW2Yh5bXLYEKBENb+Zs0i4fchaKBp4aS7FUw4e/F09u
 j4o=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 22 May 2019 10:40:07 -0700
Subject: Re: 5.2-rc1 boot on Unleashed
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
Date: Wed, 22 May 2019 10:38:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_104012_021658_7BB7E5EB 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/22/19 9:42 AM, Paul Walmsley wrote:
> Am checking on this now and hope to have some conclusion on it this week.

Thanks. Any chance you can take a look at the U-Boot clock driver to 
patch it as per the DT changes ?

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
