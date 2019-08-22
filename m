Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9BE988A9
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 02:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9F9Tr6WB8qfb76zWRD/SLpwbWKLZNoFuC2p82kB8I4A=; b=O6+sWrXmcF4dxw
	4rJwk5jtVftTpRjYjqxy7GwouYbPL/LDlflF3uGtM5QgHVC3Bissj3aWXjrOuDTSTJII5kJeHHnbj
	6byY2HC/ZmQtqOKb9NMMP4J1ttndGboINDtXvhkQ2+g/QwIjynsxE5UfufKXzy0P5QF1yabuCi1nh
	7csdSJS/OGByQ/b5FoEB7JFpUZ2qFSiGBFGsthzpMp4IDkRA1Z+sUimd/EgWSAwmGpoM5rQixY8OK
	8kmsJwx2JTis6VHheN4YWHPeyTf6Do6cjBDek3Ifd0I81Bk/FYVD6fglZDyQup9z0qJ83y/tMtKf/
	iI/hBRrr98LeFnuDOFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bFa-0002nG-LZ; Thu, 22 Aug 2019 00:46:50 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bFW-0002m5-UX
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 00:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566434915; x=1597970915;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fkNZnhPM7WfLkPzEFjEzhMya8eMeeNJ+IP3XtPFJp3Q=;
 b=mFj0+aAzRZqjoAo4ae0kyucXxjJeJtCL/WtWIQYPcfURKyb91mO04uDq
 wO9LV9RVYRD/1IAWRq+NnuuV06ycGK7g8jxvA577zbEZyBxs3+grsNFYq
 WbWFo7ameS1Ijs8iSlswPRfaWNaT/offqOCJ2TD98ghnYHyP8F1DzTDOi
 WeKY22RgmwMhmwFTno4kedBxNOOCHR2Gaqf5YDI+3HELXNRaqdcVoRJvl
 QQH504XlklQFJrtG+v6aCm2fxTdeFB2aELh5S3uaOlnYJmtbr0T9kgGhD
 KRc0KQC4xUN3iaRPBOtZUgLdlfjwctK5+cC53wkjlf8p7rIXT/e6Npurz w==;
IronPort-SDR: +RMrpfdsgUeeJCfFHnzeCOvX2FMfeHKa7LA9UfZ+nnuaREv5GGJqZvCgBXXSL7ZzrZDDjdEmKZ
 r5tcJDOSNZMmSU4BYJk7ek54W54rpp1g14D4BBbOrAM4MwEO3P+4oAEUkY3WlcwPqsSU2RJuFF
 3rvQZAeodONUAyk9N5ZXYpVoKgRQuNTvoJ9+R9IAEazhDYkU7L003H4lSrOXujR3pPzauSXgU3
 dRyAWlA4xbsR7AFiTXU3AWxMF5t+0CadGqv+e0x2DtV88DZGkZvYMoZoQGKCleXLvWs9VK+bgf
 5so=
X-IronPort-AV: E=Sophos;i="5.64,414,1559491200"; d="scan'208";a="216804433"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 08:48:31 +0800
IronPort-SDR: EtPlrMLUus85hwCB0AOUl6H4r3NwG8my04uDC/RosC/bYKE1U+BODMu5O55RVCuJQnsTUdku3v
 I7lR442abCm6H44vjGxdNcn7yhiGI6A+ZXKxB9efBnJgVLxyX7mD8KVoorl+uUQg633f2HXr02
 hLYImxxC86rHvva1pIpjd0SMR4+IONkA7yzeMKXmk2cbvc7ZjOrze01rK93fXkylsIMM0HFxYO
 3UxnFeDL7NZ52mYZegQdl/P45HODnCH53QmzEXwTRM57d92Dk6RLFpKjuSkBxSiYnOVSbcDbVE
 j5A4p3hysuFChNt0cAANiDwU
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 17:44:04 -0700
IronPort-SDR: JNPiJpHMaiTIFAY7i+CnRyW5tg8oDoexB2wvQ4LX60OFhmEwmMkNgti6rFJ246w4vvkAQeCowv
 2HNlHJde7i1diC60YFtMugD/dcSGES1pdi9Yr2jpZaMHcpZhZ7f+02lFTYhmkUAaSxQrNAebDF
 DC/2GdabYRzTJcAyBqFqtlICj0plAUWyVOoj++FcaN1lCEzvVlENnHyxwIyE3C3ZOatn22XNzq
 GLPmUup3LDOqPkysfev1S+dmtrg4RWzXC4Po6SXngDie4bXQu94HdoaQ9qr0v3NMRpF1Q85DPy
 UPA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 21 Aug 2019 17:46:45 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Optimize tlbflush path
Date: Wed, 21 Aug 2019 17:46:41 -0700
Message-Id: <20190822004644.25829-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174647_044610_C62513A8 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds few optimizations to reduce the trap cost in the tlb
flush path. We should only make SBI calls to remote tlb flush only if
absolutely required. 

This series is based on Christoph's series:

http://lists.infradead.org/pipermail/linux-riscv/2019-August/006148.html

Changes from v2->v3:
1. Split the patches into smaller one per optimization.

Atish Patra (3):
RISC-V: Issue a local tlbflush if possible.
RISC-V: Issue a tlb page flush if possible
RISC-V: Do not invoke SBI call if cpumask is empty

arch/riscv/mm/tlbflush.c | 21 +++++++++++++++++++++
1 file changed, 21 insertions(+)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
