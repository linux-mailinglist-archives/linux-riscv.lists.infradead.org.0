Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C264381BD
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 01:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hbjt6XDoYTlWh4cW0lB3FrAeyDBsxcPHlsjaKrbMBok=; b=TAwGZwoIjK9URKLD3wqldMlCK
	nZqMe/g5hMEYVrFHKZECE06EX/fm/e0dXXjFScC4xgUoWG6SscZ5SHn5K0T6E4KtTMwtxDeHh5B5c
	XL5S2xKv5VR5oq/5M3zugZxqwEMSTha+JK9/anrUnifQjgOCz9kYBkntMa1NdKyja4hOjfLxdJWHi
	n4/WmMrDikjWpIEc3xBgb+TcKzz+IhBfVG6X6DTB6ecuo2td5q8GixOsCyOTdKhk76tIgEpexZFa1
	lqRwhKC1XgphNEByHeEwH9OJHwLoGQhSp6Q7h45Ii0+LNhU7SCHDWvNFt8OnCM/JRO1AHUii33AhX
	lI/NDkzvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1fk-00029m-BT; Thu, 06 Jun 2019 23:19:53 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1bw-0001X8-1S
 for linux-riscv@lists.infradead.org; Thu, 06 Jun 2019 23:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559862956; x=1591398956;
 h=subject:to:references:from:message-id:date:mime-version:
 in-reply-to:content-transfer-encoding;
 bh=aM8dRNNhCuRSED8C8Oc74ThBFAMLPPJJcz08vPpy1+I=;
 b=MUG8GdZtn9cc6ig7M/3pSQOeNTcWO1HorbfpzJGWQpnhi06IipDNGI1F
 R4noN6HVoh8UeDsdwZjbOsnglLnMqosY9mX0DR4I6Qe0xVJAw45mQ6dFl
 PbzucZCHZSG3mEEnEgxh0FowxoLkCdB1MRulXo9+so3XSnEsmvYgutfRs
 Z5Rip3obnim4n72Od3QoLSaGxrwjEhP9vJr/MUPPBp7GGlIP3Mmd8M3T2
 tBylYi8XSnr9cryl+H7pCZqa9enXYofY9588AcmrH7FlZwz6daKnQxkMw
 FJDFhfchMk2jUbPJLpul2Ut6Lu7JkSyQsRPAgmIx9efa0sv64USo3HIsO w==;
X-IronPort-AV: E=Sophos;i="5.63,561,1557158400"; d="scan'208";a="109986147"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 07:15:45 +0800
IronPort-SDR: kX5mxCi6P7Tg8hPiTq1qkQ3s+sWwe2QBZkitBUXPl7w5WzE6qQFSQ2EXWVGTAkinsnYsLS89p1
 hn3Oatb34TGXzofTEV7YaMNXhp23AZ1H7J5Y6syn5jbkXKZH+mfjqxqPogzjBqigkyMRJHoVd9
 wovwelPOmVqfPh+YsDZHQDBE3D32GQRPd5I9SM9leJb+3uvnwiV/p/ZucOPD/M2xKv3GyMoUM/
 vBi8qgF4WU3FSEPPKRb0i2GXvO//zJhFFN5Jrfnlnc+SEszfiFx3Q85ku5NbndnG9L7UruSJv0
 cLSw0BDnjAZpMXWPAX2I9A4r
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 06 Jun 2019 15:53:03 -0700
IronPort-SDR: 0uzpy0OABTK631+vt4PZaTzOPuv2jsT7PoBTW3gy3XUetZx0y2iO3qy3RNG4yzWbP+iflJwaiu
 SqLPpZQtX8WBzIM8av0SjkTox/5maoWyh+useQzNBzpojpFn7NecUrxchJO4Tfc7aXFmzHKFAe
 ++84UCZ34X5TH4mYA0hcISQgbwDDWOlTIvDliZH1XE9djkNlVysBDi8lIMmzu1B/ImnXEjVyM+
 4fQH8bF5LKrEx20xECan36vYzuoi/y5wFfAnXcTNGTfCs5VExDPXOm3Wx33efC57J9mhaUobdi
 6c8=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 06 Jun 2019 16:15:45 -0700
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
To: Kevin Hilman <khilman@baylibre.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <7h36kogchx.fsf@baylibre.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <05010310-baa2-c711-cb54-96a9138f582a@wdc.com>
Date: Thu, 6 Jun 2019 16:15:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7h36kogchx.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_161557_513510_848D295F 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/5/19 10:37 AM, Kevin Hilman wrote:
> Hi Paul,
> 
> Paul Walmsley <paul.walmsley@sifive.com> writes:
> 
>> Add support for building flattened DT files from DT source files under
>> arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
>> architectures.  Start our board support by adding initial support for
>> the SiFive FU540 SoC and the first development board that uses it, the
>> SiFive HiFive Unleashed A00.
>>
>> This third version of the patch set adds I2C data for the chip,
>> incorporates all remaining changes that riscv-pk was making
>> automatically, and addresses a comment from Rob Herring
>> <robh@kernel.org>.
>>
>> Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
>> BBL and open-source FSBL, with modifications to pass in the DTB
>> file generated by these patches.
> 
> Tested this series on top of v5.2-rc3 on HiFive Unleashed board using
> OpenSBI + mainline u-boot (master branch as of today).
> 
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> 
>> This patch series can be found, along with the PRCI patch set
>> and the DT macro prerequisite patch, at:
>>
>> https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
> 
> nit: I only see this series in that branch, not any of the prerequisite
> patches you mentioned, which made me assume I could this series alone on
> top of v5.2-rc3, which worked just fine.
> 

I tried only this series on top of v5.2-rc3. Kernel boots file with DT 
updated via U-Boot. But networking didn't come up.

Do you have networking up after the boot? If yes, can you please share 
the config.

> Kevin
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
