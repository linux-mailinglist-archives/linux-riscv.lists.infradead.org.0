Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF273A470
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 11:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3wqobqiXRCx2u1KhoN7/uxATy+2+Oo/q2SF7mewfHc=; b=rHarbBpV1wmZvi
	9CC3QTWVDcGBnlCLBKaH/MIGyXmVvP4SqeK5MTxXNSQGdwC7BVhXkh/BmUURgvf9P9tOJW3x727EP
	P5XYdLXw/nSvaHRT21LH4rd8R9uqCLTierPqyXYrSepyGk/0pQ/D40KOaxkVse21VbV9w6Q5Q3MCp
	eHaFJaP2AJT4Gry6aNN5HYITvpF+6s3Cit+FzBNTqgeauBB08wUsBLd/fKhiLCOcqelfZf3NC3XWi
	IFglRHNFUJDxT+g0ImgtsaSuFGcDOyT2W1ePkIRct0FEN9dnHr7ESfl3N3BIuoJEHr3SQJw12mFc2
	xawGFrkxausmu9uaUbwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZtwk-0003Zm-F6; Sun, 09 Jun 2019 09:17:02 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZtwh-0003YI-HR
 for linux-riscv@lists.infradead.org; Sun, 09 Jun 2019 09:17:01 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x59976Eo104111
 for <linux-riscv@lists.infradead.org>; Sun, 9 Jun 2019 05:16:54 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t0t4cfv6x-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Sun, 09 Jun 2019 05:16:54 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <heiko.carstens@de.ibm.com>;
 Sun, 9 Jun 2019 10:16:51 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 9 Jun 2019 10:16:46 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x599Gj1v56492118
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 9 Jun 2019 09:16:45 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 15AA4A4053;
 Sun,  9 Jun 2019 09:16:45 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6CDE1A404D;
 Sun,  9 Jun 2019 09:16:44 +0000 (GMT)
Received: from osiris (unknown [9.145.173.81])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun,  9 Jun 2019 09:16:44 +0000 (GMT)
Date: Sun, 9 Jun 2019 11:16:43 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v3 00/33] Convert files to ReST - part 1
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1560045490.git.mchehab+samsung@kernel.org>
X-TM-AS-GCONF: 00
x-cbid: 19060909-0020-0000-0000-0000034878F1
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060909-0021-0000-0000-0000219B9744
Message-Id: <20190609091642.GA3705@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-09_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906090069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_021659_689292_3E9F0B35 
X-CRM114-Status: GOOD (  25.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexei Starovoitov <ast@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@infradead.org>,
 Greentime Hu <green.hu@gmail.com>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 11:26:50PM -0300, Mauro Carvalho Chehab wrote:
> This is the first part of a series I wrote sometime ago where I manually
> convert lots of files to be properly parsed by Sphinx as ReST files.
> 
> As it touches on lot of stuff, this series is based on today's docs-next
> + linux-next, at tag next-20190607.
> 
> I have right now about 85 patches with this undergoing work. That's
> because I opted to do ~1 patch per converted directory.
> 
> That sounds too much to be send on a single round. So, I'm opting to split
> it on 3 parts. Those patches should probably be good to be merged
> either by subsystem maintainers or via the docs tree.
> 
> I opted to mark new files not included yet to the main index.rst (directly or
> indirectly ) with the :orphan: tag, in order to avoid adding warnings to the
> build system. This should be removed after we find a "home" for all
> the converted files within the new document tree arrangement.
> 
> Both this series and  the next parts are on my devel git tree,
> at:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=convert_rst_renames_v4
> 
> The final output in html (after all patches I currently have, including 
> the upcoming series) can be seen at:
> 
> 	https://www.infradead.org/~mchehab/rst_conversion/

Will there be a web page (e.g. kernel.org), which contains always the
latest upstream version?

>   docs: Debugging390.txt: convert table to ascii artwork
>   docs: s390: convert docs to ReST and rename to *.rst
>   s390: include/asm/debug.h add kerneldoc markups

I can pick these up for s390. Or do you want to send the whole series
in one go upstream?


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
