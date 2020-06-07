Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8D31F0A6D
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jun 2020 10:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u3PAf9XxE84juVjJE7JO3JV9EhJ5dIdUFg4I07nft+g=; b=KdjOEIh+pgOKv5
	i6cfPNsqfhl4Ek0AkTusaCpLJHyXilMBxlGpc7+WfTKCRL+lsdjY43oScXgnuHGLx4dSq4kWpVg7k
	XIbqVBo87UWaNZdxC/awlNu6sF1uFstOa8uv7ySjVoOFWvSgXmjtlgKISShPw5W39ZyKRFJDgf2sj
	m5nv7dcz6jETtq1lLmHTkRWX4q4w47EDzoRuiDMRY8TZgAVhK/n45UbvH4kj4jrMh4CtPx5NFvTj9
	ozm5RLgXD0Rk5yKQxDV9j/7O4dfH64Wtm1PPEfXVm26QVTP2A00WVaiOgSuWsDBA9t1sjX5GDbwIl
	qZ1s/Nj+5c9e2rUZqnOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhqDx-0002sM-CQ; Sun, 07 Jun 2020 08:00:09 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhqDt-0001N0-DV
 for linux-riscv@lists.infradead.org; Sun, 07 Jun 2020 08:00:07 +0000
Received: from localhost.localdomain
 (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr [90.112.45.105])
 (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A5B6B240003;
 Sun,  7 Jun 2020 07:59:50 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Zong Li <zong.li@sifive.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: [PATCH v5 0/4] vmalloc kernel mapping and relocatable kernel
Date: Sun,  7 Jun 2020 03:59:45 -0400
Message-Id: <20200607075949.665-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_010005_742842_A1570A47 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset originally implemented relocatable kernel support but now          
also moves the kernel mapping into the vmalloc zone.                             
                                                                                 
The first patch explains why we need to move the kernel into vmalloc             
zone (instead of memcpying it around). That patch should ease KASLR              
implementation a lot.                                                            
                                                                                 
The second patch allows to build relocatable kernels but is not selected         
by default.                                                                      
                                                                                 
The third and fourth patches take advantage of an already existing powerpc       
script that checks relocations at compile-time, and uses it for riscv.           
                                                                                 
Changes in v5:
  * Add "static __init" to create_kernel_page_table function as reported by
    Kbuild test robot
  * Add reviewed-by from Zong
  * Rebase onto v5.7

Changes in v4:                                                                   
  * Fix BPF region that overlapped with kernel's as suggested by Zong            
  * Fix end of module region that could be larger than 2GB as suggested by Zong  
  * Fix the size of the vm area reserved for the kernel as we could lose         
    PMD_SIZE if the size was already aligned on PMD_SIZE                         
  * Split compile time relocations check patch into 2 patches as suggested by Anup
  * Applied Reviewed-by from Zong and Anup                                       
                                                                                 
Changes in v3:                                                                   
  * Move kernel mapping to vmalloc                                               
                                                                                 
Changes in v2:                                                                   
  * Make RELOCATABLE depend on MMU as suggested by Anup                          
  * Rename kernel_load_addr into kernel_virt_addr as suggested by Anup           
  * Use __pa_symbol instead of __pa, as suggested by Zong                        
  * Rebased on top of v5.6-rc3                                                   
  * Tested with sv48 patchset                                                    
  * Add Reviewed/Tested-by from Zong and Anup 

Alexandre Ghiti (4):
  riscv: Move kernel mapping to vmalloc zone
  riscv: Introduce CONFIG_RELOCATABLE
  powerpc: Move script to check relocations at compile time in scripts/
  riscv: Check relocations at compile time

 arch/powerpc/tools/relocs_check.sh |  18 +----
 arch/riscv/Kconfig                 |  12 +++
 arch/riscv/Makefile                |   5 +-
 arch/riscv/Makefile.postlink       |  36 +++++++++
 arch/riscv/boot/loader.lds.S       |   3 +-
 arch/riscv/include/asm/page.h      |  10 ++-
 arch/riscv/include/asm/pgtable.h   |  38 ++++++---
 arch/riscv/kernel/head.S           |   3 +-
 arch/riscv/kernel/module.c         |   4 +-
 arch/riscv/kernel/vmlinux.lds.S    |   9 ++-
 arch/riscv/mm/Makefile             |   4 +
 arch/riscv/mm/init.c               | 121 +++++++++++++++++++++++++----
 arch/riscv/mm/physaddr.c           |   2 +-
 arch/riscv/tools/relocs_check.sh   |  26 +++++++
 scripts/relocs_check.sh            |  20 +++++
 15 files changed, 259 insertions(+), 52 deletions(-)
 create mode 100644 arch/riscv/Makefile.postlink
 create mode 100755 arch/riscv/tools/relocs_check.sh
 create mode 100755 scripts/relocs_check.sh

-- 
2.20.1


