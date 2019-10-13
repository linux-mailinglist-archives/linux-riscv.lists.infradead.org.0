Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24C5D5656
	for <lists+linux-riscv@lfdr.de>; Sun, 13 Oct 2019 15:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbdGyyJUGtLzQGcrLIEsTdBn4HZKQqTHz9hhrggGa50=; b=OiJMoYkldDb62o
	yFeN2EcxAJsRL6cMO7wqzd0kAzuZWMkYrAD7wScuc4VNNfijj9GfkKUwlHFr0qKQfJRrXTFE8nEUm
	rC4lB1PrwQ0O9ENdKaTHG5mwu60JCyqanFjtiFiyNe8MKnR4aLtoD/026Otvqtpd1Yqp97XS//Q2W
	NPSetEkUfjRh4Vs+9YEcHD36FlibpAbNUS1bcgLs9AElLbbn1l6Lk23yYp3Hm6HkUcteAJTKypZOX
	wTe6vAYhdFB2ugeOfhZRPWzSR1TVeRO7gnMjYNMczlENQLblVlmZcYCg7lheGbt4d6EEkB5NO0Pr5
	htugaK1hkmDg9u1tzaaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJdYd-0007YO-QL; Sun, 13 Oct 2019 13:05:11 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJdYV-0006e2-J6
 for linux-riscv@lists.infradead.org; Sun, 13 Oct 2019 13:05:05 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Oct 2019 06:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,292,1566889200"; d="scan'208";a="346492348"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 13 Oct 2019 06:04:56 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iJdYN-000ApH-EF; Sun, 13 Oct 2019 21:04:55 +0800
Date: Sun, 13 Oct 2019 21:04:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v4 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
Message-ID: <201910132151.A52iK7nK%lkp@intel.com>
References: <20191003090945.29210-4-green.wan@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003090945.29210-4-green.wan@sifive.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_060503_647834_8BFBC837 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Vinod Koul <vkoul@kernel.org>, linux-hackers@sifive.com,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Green Wan <green.wan@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>, kbuild-all@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, dmaengine@vger.kernel.org,
 Bin Meng <bmeng.cn@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Green,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.4-rc2 next-20191011]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Green-Wan/dmaengine-sf-pdma-Add-platform-dma-driver/20191003-172343
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-43-g0ccb3b4-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/dma/sf-pdma/sf-pdma.c:100:6: sparse: sparse: symbol 'sf_pdma_disclaim_chan' was not declared. Should it be static?
>> drivers/dma/sf-pdma/sf-pdma.c:107:32: sparse: sparse: symbol 'sf_pdma_prep_dma_memcpy' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
