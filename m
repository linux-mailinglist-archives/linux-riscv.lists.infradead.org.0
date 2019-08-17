Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EBA9135F
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 23:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ss3mIRN2XivQ2H7+DZE9mQ+0b7uTM4jNSE78vcP2RAI=; b=o2msdq+TyvdFh3
	lIMvhCTX66bEROHdQjlFumMjgRP0Z73FJCEu36r4adSFyfv30QWpdFYa2yUdiha7qX3RFAvfFiDZl
	z9jngXgdtEXD3aO+VB+9wnmSUZK/Z7Cs0CUH0D55ornjtJqpRguHWDvRUtR/+bCz/3l2oWxfRHQUP
	AOviiE2SbCinjwEbi39iw+dOKmJVnVcMdbKPX6pLzdKTmmGxEfIEN1k8+3seOFVuuWLkHuGpgCp1w
	R1d+pS+0gL/tyY1HM6/nvmnDwIdmQtj7OWhTdahGSlORhUpz11uNvSRonzmnjgcWXA/2t16crmpkO
	MhSOWUaKN4NahiwWHlbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz6Sw-0006hk-FN; Sat, 17 Aug 2019 21:42:26 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz6St-0006gw-QD
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 21:42:25 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7HLgJQo070110; Sat, 17 Aug 2019 17:42:20 -0400
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.10])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ueagrykqm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 17 Aug 2019 17:42:20 -0400
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
 by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x7HLdlMV021950;
 Sat, 17 Aug 2019 21:42:17 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
 [9.57.198.26]) by ppma02dal.us.ibm.com with ESMTP id 2ue9760hdq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 17 Aug 2019 21:42:17 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7HLgHQ636438384
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 17 Aug 2019 21:42:17 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 03038B2065;
 Sat, 17 Aug 2019 21:42:17 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D6CAEB205F;
 Sat, 17 Aug 2019 21:42:16 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.201.199])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Sat, 17 Aug 2019 21:42:16 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id BE05416C1700; Sat, 17 Aug 2019 14:42:17 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:42:17 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH -rcu/dev] Please squash: fixup! rcu/tree: Add basic
 support for kfree_rcu() batching
Message-ID: <20190817214217.GD28441@linux.ibm.com>
References: <20190817042211.137149-1-joel@joelfernandes.org>
 <alpine.DEB.2.21.9999.1908162131490.18249@viisi.sifive.com>
 <20190817044308.GA139754@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817044308.GA139754@google.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-17_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908170237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_144223_972963_09E516CD 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: paulmck@linux.ibm.com
Cc: rcu@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 17, 2019 at 12:43:08AM -0400, Joel Fernandes wrote:
> On Fri, Aug 16, 2019 at 09:38:54PM -0700, Paul Walmsley wrote:
> > On Sat, 17 Aug 2019, Joel Fernandes (Google) wrote:
> > 
> > > xchg() on a bool is causing issues on riscv and arm32.
> > 
> > Indeed, it seems best not to use xchg() on any type that's not 32 bits 
> > long or that's not the CPU's native word size.  Probably we should update 
> > the documentation.
> 
> I would endorse any such documentation effort ;-)
> 
> > > Please squash this into the -rcu dev branch to resolve the issue.
> > > 
> > > Please squash this fix.

Done, please see below for updated version.

> > > Fixes: -rcu dev commit 3cbd3aa7d9c7bdf ("rcu/tree: Add basic support for kfree_rcu() batching")
> > > 
> > > Signed-off-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> > 
> > Link: https://lore.kernel.org/lkml/alpine.DEB.2.21.9999.1908161931110.32497@viisi.sifive.com/T/#me9956f66cb611b95d26ae92700e1d901f46e8c59
> > Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

I added the link, thank you Paul!  If you meant the Reviewed-by to apply
to the entire kfree_rcu() patch, I will of course be very happy to apply
that as well.

> Thanks Paul! And nice to meet you again after many years ;-) Glad to see you
> working on riscv.

What Joel said!  ;-)

							Thanx, Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
