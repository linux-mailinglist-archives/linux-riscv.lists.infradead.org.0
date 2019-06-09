Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D573A481
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 11:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kS0nEr9hZM+5BxcoYzO+dxZP8d/8L06eLgR6tv12vlE=; b=UnHg5Rz8zOLqIJ
	cIxxHcR/oYOTFFQlGIXg9m8ke7wf0F2DmEWeHuIcMMRAq/o8DXLHk1gWGWM/8uRyU3agdq9SOR7M7
	kc7qPbQWwwA9IDrFIzc70WJa/NXl7R++h5zVH013DXfhWZUlw/ArSVLADz5iXHFmsdWDPMBmkKNzX
	yCp2h0TVJfsIHJyB4q76tYCD5Cgx1xBiZM0ezV3eArRV7q9FFshWRapAeyZ9ETGt8tPuv4M0aCzrJ
	yYJOW2xpALNK5xpI0cBV2UKGQYDeIQ8KFUhFD3I9d8Fz6Ev4t5l7jY5qE0pcu16OgpEKi84gwxKUb
	cUXYfv0WL2c6vKP6vYvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZu7F-0006La-4S; Sun, 09 Jun 2019 09:27:53 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZu7C-0006Ky-Fr
 for linux-riscv@lists.infradead.org; Sun, 09 Jun 2019 09:27:51 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x599QoaD146571
 for <linux-riscv@lists.infradead.org>; Sun, 9 Jun 2019 05:27:49 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t0tbyqg1h-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Sun, 09 Jun 2019 05:27:49 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <heiko.carstens@de.ibm.com>;
 Sun, 9 Jun 2019 10:27:46 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 9 Jun 2019 10:27:41 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x599ReFd35979690
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 9 Jun 2019 09:27:40 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7404011C04A;
 Sun,  9 Jun 2019 09:27:40 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C4A7B11C050;
 Sun,  9 Jun 2019 09:27:39 +0000 (GMT)
Received: from osiris (unknown [9.145.173.81])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun,  9 Jun 2019 09:27:39 +0000 (GMT)
Date: Sun, 9 Jun 2019 11:27:38 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Markus Heiser <markus.heiser@darmarit.de>
Subject: Re: [PATCH v3 00/33] Convert files to ReST - part 1
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
 <20190609091642.GA3705@osiris>
 <56cd597a-9db8-b6ea-eed1-51d3bdf0e6e0@darmarit.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56cd597a-9db8-b6ea-eed1-51d3bdf0e6e0@darmarit.de>
X-TM-AS-GCONF: 00
x-cbid: 19060909-0008-0000-0000-000002F1A5FB
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060909-0009-0000-0000-0000225E99D8
Message-Id: <20190609092738.GB3705@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-09_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=988 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906090070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_022750_641982_933E1B53 
X-CRM114-Status: GOOD (  15.70  )
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
 Greentime Hu <green.hu@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Jun 09, 2019 at 11:22:36AM +0200, Markus Heiser wrote:
> 
> Am 09.06.19 um 11:16 schrieb Heiko Carstens:
> >Will there be a web page (e.g. kernel.org), which contains always the
> >latest upstream version?
> 
> You are looking for the HTML docs on kernel.org?
> 
>   https://www.kernel.org/doc/html/latest/

Yes, thanks!


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
