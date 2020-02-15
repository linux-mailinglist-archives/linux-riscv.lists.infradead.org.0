Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F040F15FE35
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 12:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Reply-To:
	MIME-Version:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+G5tc235UnGV4KFjW5nkAH1gGLECZXtrvbWoLjTAzSU=; b=l7Z
	TMkIxVNnWDFIFbW0KKcOyX2pg6N3Wav5sd8ScBxSp01wK+P6QzqOXTyJrK4u8gq9Hx1mn6ic9q8ko
	wqLTxOF/h+9XgZvkLF9ga2h8uhGW+EmWAIy3dDz4THMzhFU6muKxybegWGYgtxwzWigkymgJoHVG8
	DFrJidQrJ39tdyGuOFQR2saz2vLUYsgGWbkK/fjgJU85WmxXDWc12P7eOL4mADLC0MDQ3WMsct2uX
	cl5nk5V7uLYgpwB3OMdtGfJWR5Xdv9uku2p4CI+u1e2o4++CxNcqgyQyGVQ2EdFVebdLI9fMQsdIH
	sXmdH7uSzww7M3xebpUZcBwIuAm6XVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2vxv-000343-Ce; Sat, 15 Feb 2020 11:50:31 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2vxq-00031y-VN
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 11:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1581767417;
 bh=HU/2N3E0qmqDHC4/1OMZ5qn9O2Ez51tN26IGhSevr3M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=PDz5Oa4PiERxkVzv96xh+knfppMi1Cf3D9GGAnaZdW2ITeYcxcGdmL0TszUC9w/Vg
 qNp2BIXF1oBCzOn88VEiozXLEvva8VgJ/SYGGsX8cUBjbPgeak9Mic9wnaYYcvgWKt
 C3PBkr2GhuWtlo0aqVO1aA2aNk1kb29rEh7BhHIY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from md1f2u6c.ww002.siemens.net ([95.157.55.156]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0Lx7Mz-1jZSWu15vV-016f2Q; Sat, 15 Feb 2020 12:50:17 +0100
From: Jan Kiszka <jan.kiszka@web.de>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/3] riscv: mem= support, ioremap exec fix
Date: Sat, 15 Feb 2020 12:49:41 +0100
Message-Id: <cover.1581767384.git.jan.kiszka@web.de>
X-Mailer: git-send-email 2.16.4
X-Provags-ID: V03:K1:7utcmur/a9lyoiDKqs9p1IE04ltxLb90ysWQyFgCriS97NlAzPA
 Yk6v8Ulh60rxlwB9pv0HgnieWdheINYRY2hSInFjZGXe16xoWO4bRMYyiFHhOzXKJkBusYM
 1jcuD+XKDqH0WGwbYcYAPjC+69r5RC+RgMURZ13FyFU3v+3ayZBrm6GEeBEAf9GZiVjqgxE
 pRm7/SyTavYd2QIi5H47Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:50/pyn/MMEs=:ZuphJuz5BEBSGWUrIOgDFn
 6rIjomYXqEvNwi8rTGEbHs15C/j4o7WD9z0Otu+aOhJLk7A1BPAwYDRLZ81hcEDmySTR14roO
 M1AuQmnSpnc3pE8/mNWksQ4MTXQ6TpUvipISPAoiFahqG2me3qdvEeSjI7rgOZDvCuixFa6Y0
 /dgUR6CdbyzlL7K37bbUY80b54fDn9blYtQMQLgSFklEHXzttBUENh3Eyc/jPW0uHjBX4tgPl
 EBVGZR6isYyLgvgdjr+GJ8oqWin1hbsiQfqYy8drt/wu3RyC4vX1zSKAC3/Ep2hWYjNCT0BcQ
 vKZvRhxvkK7EdlSlpdcneKsQllHi+4OVeAO2v7sMlmjgTMKyGFqbQyuaVmB9MR9jxW1E/vtie
 pUEyrRGjr1ssUzVgXpM0GJHyufLkfKU0LWeqff6WuqU+XST+QhKsRQ4cKseglRrf85iloZzly
 tvY+EsZ09pdFKE7e08dZQgFq/y1iROqd7PwORUkjxmQM/BUcSap4Xzn6vraRVYR7f3QVCBoXK
 cB6JtZ4B3M3oVE2I2Fv1e9yH1almw9k+mZol0wnqaHk7GNpAcVmNDNk3rtFOZivk8nI2XF1IK
 Yy/fseeFscysayZq++7tp4eT3NtQhS0r7hQaHMYDxW/BMQhVppf0QqBblc3F8GvHTOvICj3IT
 QeB75/JKQ3d0fgcZY8udbHhTD3O+Y2NUhK2Kq2ZngT1y3A4x63J6AGgwHWjFF4dRsWn6W3J6w
 uiOYQrLBv3LBLnFjlZcwddUgb7mzsdLl/4Nyglz21SJoueK4j4DruhL/nefl0eGQHKeWh1jqG
 S37t4m8KtNjGQXNn6/Gh8QkOli0Y8LX6fPCr6qcU5MIvw3FrsIbjnsOXCyMFu8tJBUpL0Qlws
 GEYdHvsqgAOOY4EDF74HvKV+5SwTKQSo5kHr9RG6WB6bVp4W3GSaxr2qS0nIsi+6kfRvdafqo
 xaE4HzjT7UlPaGKYTQskgZr8GTTB+Oh6q85PzU6+o8T2NgWdTv40nCoYTpDb2DZjQStcD3fgB
 wtsSpD+oC6jhWGTxDe9l2oVmsCpSRs6palS5yghLRiWbnF/r8UaAnX8H/fODmZrFlH8dVhZoP
 3vZEOQxmjh/M2MrdT3D82JFUhzCSmEEqCxYiKjo1FgYl/1h6g34hkj1XZ3rL6FhM4LXyptkTw
 +MObyQWUIemIQ4MyivNbuNFmoqLMxkda1z+BdKmQTU3ENfnvO/8EY7jylcJEdOKPod+qpkoq+
 R58kJwlkFCCE6+6GD
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_035027_337813_F3D57B65 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Patch 1 was already sent separately. This improves it by calling
memblock_enforce_memory_limit in order to call set_max_mapnr with the
correct memory size.

There are two more patches in this series. One is a micro-optimization,
the other enables ioremap of executable memory. The latter will be
needed to enable the Jailhouse hypervisor on RISC-V.

Jan

Jan Kiszka (3):
  riscv: Add support for mem=3D
  riscv: End kernel region search in setup_bootmem earlier
  riscv: Fix crash when flushing executable ioremap regions

 arch/riscv/mm/cacheflush.c |  3 ++-
 arch/riscv/mm/init.c       | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)

=2D-
2.16.4


