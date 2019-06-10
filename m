Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6F3B8AF
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 17:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhU4jR1CI5SOZPu1Y2O6SzZkY4UTRQHsLwSAyKYkKcU=; b=lt0zI8/70gQ93F
	5NFbgfFShoAx3RrsmDjJY/wLhn0YDolVQyH9rP91GMGeNgcfBfr81102tBVXSAhYIFtrRY5pc+wUz
	o7BjYrc4QztVzbEdkphe6YEXUN+uyVY0jBnL383cKQjIIr0B2l9Pi85sTOkeoU/rzJh9F9Es79ycg
	XXZRFZT/sIjj5YFgq6zxcTeykMW8hY8GgllODAtXkww2gVPNzKO/di/MLt1nQf+AF7OzgEOjVrLYc
	EYJii7FsbgxmY82rbgqko9jqTfWwfaUxIjXuf8Y3VwaHC+RTk0zaLst0B+BR9noxMzVeStxpwYkZ0
	buycRK1Ap4R78epnbEiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMeC-0005E9-O7; Mon, 10 Jun 2019 15:55:48 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMe7-0005CV-Q4
 for linux-riscv@lists.infradead.org; Mon, 10 Jun 2019 15:55:45 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5AFldQw145762
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 11:55:41 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t1rd0dt2f-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 11:55:41 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <heiko.carstens@de.ibm.com>;
 Mon, 10 Jun 2019 16:55:39 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 10 Jun 2019 16:55:34 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5AFtXs559965666
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 15:55:33 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CE8A1AE051;
 Mon, 10 Jun 2019 15:55:33 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 34469AE055;
 Mon, 10 Jun 2019 15:55:33 +0000 (GMT)
Received: from osiris (unknown [9.145.162.214])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 10 Jun 2019 15:55:33 +0000 (GMT)
Date: Mon, 10 Jun 2019 17:55:31 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v3 00/33] Convert files to ReST - part 1
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
 <20190609091642.GA3705@osiris> <20190609092940.5e34e3b0@recife.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190609092940.5e34e3b0@recife.lan>
X-TM-AS-GCONF: 00
x-cbid: 19061015-0008-0000-0000-000002F1FB8D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061015-0009-0000-0000-0000225EF2D2
Message-Id: <20190610155531.GC4031@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906100108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085543_978946_3BFCB63B 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Greentime Hu <green.hu@gmail.com>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Jun 09, 2019 at 09:29:40AM -0300, Mauro Carvalho Chehab wrote:
> Em Sun, 9 Jun 2019 11:16:43 +0200
> > Will there be a web page (e.g. kernel.org), which contains always the
> > latest upstream version?
> 
> Yes:
> 
> 	https://www.kernel.org/doc/html/latest/
> 
> I guess this one is based on Linus tree.
> 
> Jon also maintains a version at:
> 
> 	https://static.lwn.net/kerneldoc/
> 
> I guess that one is based on docs-next branch from the Docs tree.
> 
> Btw, if you want to build it for yourself, you could use:
> 
> 	make htmldocs

Thanks a lot!

> > I can pick these up for s390. Or do you want to send the whole series
> > in one go upstream?
> 
> Yeah, feel free to pick them via the s390 tree.

Ok, applied! :)


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
