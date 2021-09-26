// bootstrap default
import 'bootstrap/dist/css/bootstrap.min.css';

// style
import './assets/style.scss';

// typescript
import './index.ts';

console.log('javascript');

if (module.hot) {
	module.hot.accept();
}
