<?php $__env->startSection('pagina_titulo', 'HOME'); ?>

<?php $__env->startSection('pagina_conteudo'); ?>

<div class="container">

        <div class="row">
            
            <div id="input-busca" class="col s12 m12 l12">
                <form method="GET" action="<?php echo e(url('')); ?>">
                    <div class="col s10 m10 l10">          
                        <input type="text" id="example-input2-group2" name="search" class="form-control" placeholder="Buscar">                        
                    </div>
					<div class="col s2 m2 l2">
					<span class="input-group-btn">
                            <button style="margin-top:10px" type="submit" class="btn waves-effect waves-light btn-primary">Buscar</button>							
                        </span>  
					</div>					
                </form>
            </div>
        </div>
	<div class="row">
	 <ul class="right hide-on-med-and-down">
		<li>    
			<a class="dropdown-button" href="#!" data-activates="dropdown-categorias">Por Categoria <i class="material-icons right">arrow_drop_down</i></a>
			<ul id="dropdown-categorias" class="dropdown-content">
					<li class="divider"></li>
					<?php $__currentLoopData = $categorias; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categoria): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>					
					<li>
						<a href="<?php echo e(route('categoria', $categoria->id_categoria)); ?>">
							<?php echo e($categoria->nome); ?>

						</a>
					</li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>	
					
				</ul>
		</li>
		</ul>
	
	</div>
	<div class="row">
	<?php $__currentLoopData = $registros; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $registro): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
		<div class="col s12 m6 l4">
			<div class="card medium">
				<div class="card-image">
					<a class="blue-text" href="<?php echo e(route('produto', $registro->id)); ?>"><img src="images/<?php echo e($registro->imagem); ?>"></a>
				</div>
				<div class="card-content">
					<span class="card-title grey-text text-darken-4" title="<?php echo e($registro->nome); ?>"><?php echo e($registro->nome); ?></span>
					<p>R$ <?php echo e(number_format($registro->valor, 2, ',', '.')); ?></p>
				</div>
				<div class="card-action">
					<a class="blue-text" href="<?php echo e(route('produto', $registro->id)); ?>">Ver mais</a>
				</div>
			</div>
		</div>
	<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>	
	</div>
	<div class="row">
	<?php echo e($registros->appends(['search' => isset($search) ? $search : ''])->links()); ?>

	</div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>